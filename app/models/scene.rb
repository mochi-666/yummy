class Scene < ApplicationRecord
  has_many :stores, dependent: :destroy
end
