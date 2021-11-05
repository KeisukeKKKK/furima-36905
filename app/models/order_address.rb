class OrderAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :shipment_id, :municipalities, :address, :building_name, :telephone_number, :user_id, :item_id, :token

  with_options presence: true do
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :shipment_id
    validates :municipalities
    validates :address
    validates :telephone_number, numericality: { only_integer: true }
    validates :user_id
    validates :item_id
    validates :token
  end

  validates :telephone_number, format: {with: /\A0\d{9,10}\z/, message:"is invalid"}

  with_options numericality: { other_than: 1 } do
    validates :shipment_id
  end
  
  def save
    purchase_record = PurchaseRecord.create(user_id: user_id, item_id: item_id)
    Order.create(postal_code: postal_code, shipment_id: shipment_id, municipalities: municipalities, address: address, building_name: building_name, telephone_number: telephone_number, purchase_record_id: purchase_record.id)
  end
end