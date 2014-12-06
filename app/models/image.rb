class Image < ActiveRecord::Base
  attr_accessible :image

  belongs_to :imageable, polymorphic: true


  mount_uploader :image, ImageUploader
end
