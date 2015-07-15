class HabitsController < ApplicationController
	def index
		@habits = Habit.all
	end

	def new
	end

	def create
		@habit = Habit.new(habit_params)

		@habit.save
		redirect_to habits_path
	end

	def show
		@habit = Habit.find(params[:id])
	end

	def edit
		@habit = Habit.find(params[:id])
	end

	def update
		@habit = Habit.find(params[:id])
		if @habit.update(habit_params)
			redirect_to @habit
		else
			render 'edit'
		end
	end

	def destroy
		@habit = Habit.find(params[:id])
		@habit.destroy

		redirect_to habits_path
	end

	private
	def habit_params
	    params.require(:habit).permit(:name, :description)
	end
end
