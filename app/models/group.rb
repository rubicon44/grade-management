class Group < ApplicationRecord
  belongs_to :grade

  validates :grade_id, presence: true
  VALID_GROUP_NUMBER_REGEX = /[0-9]+/.freeze
  validates :group_number, presence: true, length: { in: 1..20 }, format: { with: VALID_GROUP_NUMBER_REGEX }
end
