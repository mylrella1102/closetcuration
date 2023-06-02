class ItemPost < ApplicationRecord
  belongs_to :post
  belongs_to :item
end
