class Atmosphere < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :stores, dependent: :destroy
end
