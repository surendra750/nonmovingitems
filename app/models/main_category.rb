class MainCategory < ActiveRecord::Base
  
  has_one :image, as: :imageable, dependent: :destroy
  has_many :sub_categories
  
  accepts_nested_attributes_for :image

  attr_accessible :main_cat_name, :image_attributes
end
