class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :color
  belongs_to_active_hash :season

  validates :image, presence: true
  validates :category_id, numericality: { other_than: 1 } 

  has_one_attached :image

end
