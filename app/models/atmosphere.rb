class Atmosphere < ApplicationRecord
  has_many :atmosphere_review_relations, dependent: :destroy
  has_many :reviews, through: :atmosphere_review_relations
  has_many :atmosphere_store_relations, dependent: :destroy
  has_many :stores, through: :atmosphere_store_relations
end
