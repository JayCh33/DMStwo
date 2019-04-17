class Product < ApplicationRecord

  #before_destroy :ensure_not_referenced_by_any_line_item
  #accepts_nested_attributes_for :image, :allow_destroy => true
  mount_uploader :image, ImageUploader
  validates :name, :description, :category, :image, presence: true
  validates :name, uniqueness: true
  #validates :image, :allow_destroy => true
  validates :image, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'Image must be GIF, JPG or PNG format'
  }
  validates :price, numericality: {greater_than_or_equal_to: 0.01}


end
