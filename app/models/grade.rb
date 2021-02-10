class Grade < ApplicationRecord
  has_many :groups

  validates :grade_number, presence: true, uniqueness: { case_sensitive: true }, length: { in: 1..99 }
end
