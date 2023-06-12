class Weather < ActiveHash::Base
  self.data = [
    { id: 1, name: '天気' },
    { id: 2, name: '☀️' },
    { id: 3, name: '☁️' },
    { id: 4, name: '☔️' },
    { id: 5, name: '⚡️' }
  ]

  include ActiveHash::Associations
  has_many :posts

end