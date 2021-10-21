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



## Product informationtable

| Column              | Type    | Options     |
| ------------------- | ------- | ----------- |
| product_name        | string  | null: false |
| product_image       | string  | null: false |
| product_description | text    | null: false |
| category            | integer | null: false |
| product_condition   | integer | null: false |
| shipping_charges    | integer | null: false |
| shipping_area       | integer | null: false |
| days_to_ship        | integer | null: false |
| price               | integer | null: false |


## Purchase information table
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| buyer              | string | null: false |
| product_name       | string | null: false |
| price              | integer | null: false |



## Purchase record table

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| Purchase_information| references | null: false |
| Product_information | references | null: false |


## Shipping information table

| Column              | Type    | Options                            |
| ------------------- | ------- | ---------------------------------- |
| prefectures         | integer | null: false                        |
| municipalities      | string  | null: false                        |
| address             | string  | null: false                        |
| postal_code         | string  | null: false                        |
| building_name       |         |                                    |
| telephone_number    | string  | null: false                        |
| Purchase_record     | references | null: false, foreign_key: true |