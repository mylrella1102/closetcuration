class Account < ApplicationRecord

  validates :name, presence: true
  
  has_one_attached :image

  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :posts
end
