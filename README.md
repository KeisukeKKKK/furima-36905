## users table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| birthday           | date   | null: false |
| lastname           | text   | null: false |
| firstname          | text   | null: false |
| lastname(kana)     | text   | null: false |
| firstname(kana)    | text   | null: false |



## Product informationtable

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| productname        | string  | null: false |
| productimage       | string  | null: false |
| roductDescription  | text    | null: false |
| category           | string  | null: false |
| productcondition   | string  | null: false |
| shippingcharges    | string  | null: false |
| shippingarea       | string  | null: false |
| daystoship         | string  | null: false |
| price              | integer | null: false |


## Purchase information
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| buyer              | string | null: false |
| prefectures        | string | null: false |
| municipalities     | string | null: false |
| address            | string | null: false |
| postalcode         | string | null: false |
| productname        | string | null: false |
| price              | string | null: false |



## Purchase record table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user               | string | null: false |
| productname        | string | null: false |
| price              | string | null: false |


## Shipping information table

| Column             | Type   | Options                            |
| ------------------ | ------ | ---------------------------------- |
| prefectures        | string | null: false                        |
| municipalities     | string | null: false                        |
| address            | string | null: false                        |
| postalcode         | string | null: false                        |
| buildingname       | string | null: false                        |
| telephonenumber    | string | null: false                        |
| user               | references | null: false, foreign_key: true |