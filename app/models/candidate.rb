class Candidate < ApplicationRecord
  has_many :assignments
  has_many :tasks, through: :assignentms
end
