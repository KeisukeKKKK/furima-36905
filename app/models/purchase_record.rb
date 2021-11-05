class PurchaseRecord < ApplicationRecord
  belongs_to :user
  has_one :order
  belongs_to :item
end
