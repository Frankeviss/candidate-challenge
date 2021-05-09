class Task < ApplicationRecord
  serialize :candidate_id

  belongs_to :candidate
  has_many :candidates, primary_key: :candidate_ids
end
