class Sketch < ActiveRecord::Base
  validates :tree_id, presence: true
  validates :user_id, presence: true
end
