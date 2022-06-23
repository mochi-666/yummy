class ReviewComment < ApplicationRecord
  belongs_to :review
  belongs_to :user
  validates :comment, presence: true
end
