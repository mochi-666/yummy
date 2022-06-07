class Review < ApplicationRecord
  belongs_to :store
  has_many :review_comments, dependent: :destroy
  has_many :atmosphere, dependent: :destroy

  attachment :image
end
