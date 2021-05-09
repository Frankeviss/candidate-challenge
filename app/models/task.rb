class Task < ApplicationRecord
 has_many :assignments
 has_many :candidates, through: :assignments

 accepts_nested_attributes_for :assignments, allow_destroy: true, reject_if: :all_blank
end
