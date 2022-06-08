class Store < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :scenes, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :genres, dependent: :destroy
  has_many :atmospheres, dependent: :destroy

  has_many :store_images, dependent: :destroy
  accepts_attachments_for :store_images, attachment: :image, append: true

end
