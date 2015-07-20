class Goal < ActiveRecord::Base
  belongs_to :habit
  belongs_to :user
  has_many :check_ins
end
