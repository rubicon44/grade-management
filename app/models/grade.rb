class Grade < ApplicationRecord
  has_many :groups

  validates :grade_number, presence: true, uniqueness: { case_sensitive: true },
                           numericality: { :greater_than_or_equal_to => 1, less_than_or_equal_to: 99}
end
