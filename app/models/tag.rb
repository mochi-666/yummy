class Tag < ApplicationRecord
  has_many :tag_relations, dependent: :destroy
  has_many :store, through: :tag_relations
end
