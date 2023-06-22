class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: 'カテゴリー' },
    { id: 2, name: 'トップス' },
    { id: 3, name: 'アウター' },
    { id: 4, name: 'パンツ' },
    { id: 5, name: 'スカート' },
    { id: 6, name: 'ワンピース' },
    { id: 7, name: '小物' },
    { id: 8, name: 'アクセサリー' },
    { id: 9, name: 'シューズ' }
  ]
  include ActiveHash::Associations
  has_many :items
end