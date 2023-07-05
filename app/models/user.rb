class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nickname, presence: true
  validates :password, presence: true, format: { with: /\A[a-zA-Z0-9]+\z/ }


  has_one_attached :image

  has_many :items
  has_many :posts
end
