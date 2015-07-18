class Habit < ActiveRecord::Base
	has_many :goals, dependent: :destroy
end
