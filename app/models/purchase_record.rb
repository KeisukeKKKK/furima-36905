class PurchaseRecord < ApplicationRecord
  belongs_to :user
  has_one :shipping
  belongs_to :product
end
