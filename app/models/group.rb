class Group < ApplicationRecord
  belongs_to :grade

  validates :grade_id, presence: true
  validates :group_number, presence: true
end
