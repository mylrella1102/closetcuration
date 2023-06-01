class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :color
  belongs_to :season

  validates :category_id, numericality: { other_than: 1 } 
end
