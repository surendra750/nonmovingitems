class SubCategory < ActiveRecord::Base
  belongs_to :main_category
  
  has_one :image, as: :imageable, dependent: :destroy

  accepts_nested_attributes_for :image

  attr_accessible :sub_category_name, :main_category_id, :image_attributes
end
