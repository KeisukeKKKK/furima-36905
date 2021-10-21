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

- has_many :products 
  has_many :purchase_records 
- 

## Products table

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| product_name        | string  | null: false |
| product_description | text    | null: false |
| category_id            | integer | null: false |
| product_condition_id   | integer | null: false |
| shipping_charge_id     | integer | null: false |
| shipping_area_id       | integer | null: false |
| days_to_ship_id        | integer | null: false |
| price               | integer | null: false |
| user               | references | null: false, foreign_key: true |

### Association
 belongs_to :users
 has_one :purchase_record


## Purchase records table

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| users               | references | null: false, foreign_key: true |
| products            | references | null: false, foreign_key: true |

### Association
 belongs_to :users
 has_one :shippings
 belongs_to :products

## Shippings table

| Column              | Type    | Options                            |
| ------------------- | ------- | ---------------------------------- |
| shipping_area_id    | integer | null: false                        |
| municipalities      | string  | null: false                        |
| address             | string  | null: false                        |
| postal_code         | string  | null: false                        |
| building_name       |         |                                    |
| telephone_number    | string  | null: false                        |
| purchase_record     | references | null: false, foreign_key: true |

### Association
 belongs_to :purchase_records