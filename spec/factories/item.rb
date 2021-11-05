FactoryBot.define do
  factory :item do
    item_name {"商品名"}
    description_item {"あア亜"}
    category_id {2}
    status_id {3}
    shipment_id {2}
    payment_id {3}
    scheduled_id  {2}
    price {'500'}

    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end