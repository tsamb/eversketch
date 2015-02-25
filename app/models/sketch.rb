class Sketch < ActiveRecord::Base
  belongs_to :parent, class_name: "Sketch"

  validates :tree_id, presence: true
  validates :user_id, presence: true
end
