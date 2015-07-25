class CheckInsController < ApplicationController
	before_action :authenticate_user!
	def index
		@goal = Goal.find(params[:goal_id])
		@check_ins = @goal.check_ins
	end

	def create
		@goal = Goal.find(params[:goal_id])
		@check_in = @goal.check_ins.create('datetime':DateTime.now)
		redirect_to user_goal_check_ins_path(@goal.user_id, @goal.id)
	end
end
