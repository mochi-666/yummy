class AtmosphereReviewRelation < ApplicationRecord
  belongs_to :review
  belongs_to :atmosphere
end
