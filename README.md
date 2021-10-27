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

- has_many :items 
  has_many :purchase_records 
- 

## items table

| Column             | Type           | Options                        |
| ------------------ | -------------- | ------------------------------ |
| price              | integer        | null: false                    |
| item_name          | string         | null: false                    |
| description_item   | text           | null: false                    |
| detail_category_id | integer        | null: false                    |
| detail_status_id   | integer        | null: false                    |
| payment_method_id  | integer        | null: false                    |
| shipment_source_id | integer        | null: false                    |
| scheduled_day_id   | integer        | null: false                    |
| user               | references     | null: false, foreign_key: true |

### Association
 belongs_to :user
 has_one :purchase_record


## Purchase records table

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| user               | references | null: false, foreign_key: true |
| product            | references | null: false, foreign_key: true |

### Association
 belongs_to :user
 has_one :shipping
 belongs_to :item

## Shippings table

| Column              | Type    | Options                            |
| ------------------- | ------- | ---------------------------------- |
| shipping_area_id    | integer | null: false                        |
| municipalities      | string  | null: false                        |
| address             | string  | null: false                        |
| postal_code         | string  | null: false                        |
| building_name       | string  |                                    |
| telephone_number    | string  | null: false                        |
| purchase_record     | references | null: false, foreign_key: true |

### Association
 belongs_to :purchase_record