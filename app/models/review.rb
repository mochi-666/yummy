class Review < ApplicationRecord
  belongs_to :user
  belongs_to :store
  has_many :review_comments, dependent: :destroy
  has_many :atmosphere_review_relations, dependent: :destroy
  has_many :atmospheres, through: :atmosphere_review_relations
  has_many :scene_review_relations, dependent: :destroy
  has_many :scenes, through: :scene_review_relations

  has_many :review_images, dependent: :destroy
  accepts_attachments_for :review_images, attachment: :image, append: true
end
