class Genre < ApplicationRecord
  has_many :genre_relations, dependent: :destroy
  has_many :stores, through: :genre_relations
end
