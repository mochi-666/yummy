class Tag < ApplicationRecord
  has_many :stores, dependent: :destroy
end
