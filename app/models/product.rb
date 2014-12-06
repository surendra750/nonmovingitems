class Product < ActiveRecord::Base
  belongs_to :user
  has_many :images, as: :imageable, dependent: :destroy
  has_one :category
  attr_accessible :title, :price, :description, :brand_name, :part_number, :images_attributes 
  accepts_nested_attributes_for :images

end
