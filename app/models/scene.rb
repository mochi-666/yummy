class Scene < ApplicationRecord
  has_many :scene_store_relations, dependent: :destroy
  has_many :stores, through: :scene_store_relations
  has_many :scene_review_relations, dependent: :destroy
  has_many :reviews, through: :scene_review_relations
end
