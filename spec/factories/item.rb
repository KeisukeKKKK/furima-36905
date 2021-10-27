FactoryBot.define do
  factory :item do
    item_name {"商品名"}
    description_item {"あア亜"}
    category_id {2}
    pstatus_id {3}
    shippingcharge_id {2}
    shippingarea_id {3}
    deliverydatedays_id {2}
    price {'500'}

    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end