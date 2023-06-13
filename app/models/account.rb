class Account < ApplicationRecord

  validates :name, presence: true

  belongs_to :user
  has_many :items
  has_many :posts
end
