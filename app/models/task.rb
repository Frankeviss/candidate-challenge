class Task < ApplicationRecord
 has_many :assignments
 has_many :candidates, thorugh: :assignments
end
