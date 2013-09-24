class Award < ActiveRecord::Base
  attr_accessible :name, :student_id, :year

  belongs_to :student
  validates_existence_of :student
end
