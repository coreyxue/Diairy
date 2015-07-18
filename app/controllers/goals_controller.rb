class GoalsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@goals = @user.goals
	end

	def new
		@habits = Habit.all
	end

	def create
		@user = User.find(params[:user_id])
		@goal = @user.goals.create(user_goal_params)

		redirect_to user_goals_path
	end

	private
	def user_goal_params
	    params.require(:goal).permit(:habit_id, :start_date, :end_date)
	end
end
