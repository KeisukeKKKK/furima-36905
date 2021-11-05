FactoryBot.define do
  factory :order_address do
    postal_code { '123-0000' }
    shipment_id { 2 }
    municipalities { "2" }
    address { '1-1' }
    building_name { '神奈川マンション' }
    telephone_number { '00000000000' }
    token {"tok_abcdefghijk00000000000000000"}
  end
end