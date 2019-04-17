class Vehicle < ApplicationRecord

  mount_uploader :image, ImageUploader

  validates :image, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'Image must be GIF, JPG or PNG format'
  }

end
