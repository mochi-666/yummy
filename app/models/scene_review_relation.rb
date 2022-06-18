class SceneReviewRelation < ApplicationRecord
  belongs_to :review
  belongs_to :scene
end
