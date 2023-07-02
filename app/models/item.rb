class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :color
  belongs_to_active_hash :season

  validates :image, presence: true
  validates :name, presence: true
  validates :category_id, presence: true, numericality: { other_than: 1, message: "can't be blank" } 

  has_one_attached :image

  belongs_to :user
  belongs_to :account
  has_many :item_posts, dependent: :destroy
  has_many :posts, through: :item_posts

end
