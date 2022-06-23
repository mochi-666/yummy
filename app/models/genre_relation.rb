class GenreRelation < ApplicationRecord
  belongs_to :store
  belongs_to :genre
end
