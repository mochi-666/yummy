class SceneStoreRelation < ApplicationRecord
  belongs_to :scene
  belongs_to :store
end
