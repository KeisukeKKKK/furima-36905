## users table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false unique:true |
| encrypted_password | string | null: false |
| birthday           | date   | null: false |
| last_name           | string | null: false |
| first_name          | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |

### Association

- belongs_to :Product_information :Purchase_record 
- 

## Product informationtable

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| product_name        | string  | null: false |
| product_description | text    | null: false |
| category_id            | integer | null: false |
| product_condition_id   | integer | null: false |
| shipping_charges_id    | integer | null: false |
| shipping_area_id       | integer | null: false |
| days_to_ship_id        | integer | null: false |
| price               | integer | null: false |

### Association
 has_many :users


## Purchase record table

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| Purchase_information| references | null: false |
| Product_information | references | null: false |

### Association
 has_many :users
 belongs_to :Shipping_information

## Shipping information table

| Column              | Type    | Options                            |
| ------------------- | ------- | ---------------------------------- |
| prefectures_id      | integer | null: false                        |
| municipalities      | string  | null: false                        |
| address             | string  | null: false                        |
| postal_code         | string  | null: false                        |
| building_name       |         |                                    |
| telephone_number    | string  | null: false                        |
| purchase_record     | references | null: false, foreign_key: true |

### Association
 has_one :Purchase_record