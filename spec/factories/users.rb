
FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    first_name {"あア亜"}
    last_name {"いイ伊"}
    first_name_kana {"アアアアア"}
    last_name_kana {"イイイイイ"}
    birthday {Faker::Date.birthday}
    email {Faker::Internet.free_email}
    password {'123abc'}
    password_confirmation {password}
  end
end

