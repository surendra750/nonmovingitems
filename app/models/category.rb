class Category < ActiveRecord::Base
  
  has_one :image, as: :imageable, dependent: :destroy
  extend ActsAsTree::TreeView
  acts_as_tree order: 'name'
  accepts_nested_attributes_for :image
  attr_accessible :name, :image_attributes, :parent_id
end
