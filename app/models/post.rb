class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :weather
  belongs_to_active_hash :high
  belongs_to_active_hash :low

  has_many :items, through: :item_posts
end
