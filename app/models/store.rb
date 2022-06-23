class Store < ApplicationRecord

  has_many :reviews, dependent: :destroy
  has_many :scene_store_relations, dependent: :destroy
  has_many :scenes, through: :scene_store_relations
  has_many :genre_relations, dependent: :destroy
  has_many :genres, through: :genre_relations
  has_many :atmosphere_store_relations,  dependent: :destroy
  has_many :atmospheres, through: :atmosphere_store_relations

  has_many :store_images, dependent: :destroy
  accepts_attachments_for :store_images, attachment: :image, append: true

  validates :name, presence: true
  validates :store_images_images, presence: true
  validates :explanation, presence: true
  validates :genres, presence: true
  validates :area, presence: true
end
