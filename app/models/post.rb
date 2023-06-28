class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :weather
  belongs_to_active_hash :high
  belongs_to_active_hash :low

  belongs_to :user
  belongs_to :account
  has_many :item_posts, dependent: :destroy
  has_many :items, through: :item_posts

  def start_time
    self.date
  end
end
