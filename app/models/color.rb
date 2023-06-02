class Color < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'ホワイト' },
    { id: 3, name: 'ブラック' },
    { id: 5, name: 'グレー' },
    { id: 6, name: 'ブラウン' },
    { id: 7, name: 'ベージュ' },
    { id: 8, name: 'グリーン' },
    { id: 9, name: 'ブルー' },
    { id: 10, name: 'パープル' },
    { id: 11, name: 'イエロー' },
    { id: 12, name: 'ピンク' },
    { id: 13, name: 'レッド' },
    { id: 14, name: 'オレンジ' },
    { id: 15, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :items
end