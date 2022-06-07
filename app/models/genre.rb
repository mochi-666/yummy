class Genre < ApplicationRecord
  has_many :stores, dependent: :destroy
end
