## users table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| birthday           | text   | null: false |
| text               | text   | null: false |


（ここに追記していく）

## Product informationtable

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| 製品名              | string | null: false |
| 製品画像            | string | null: false |
| 製品説明            | string | null: false |
| 値段                | text   | null: false |




## Purchase record table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| 購入者              | string | null: false |
| 製品名              | string | null: false |
| 値段                | string | null: false |


## Shipping information table

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| 都道府県            | string | null: false |
| 市町村              | string | null: false |
| 番地                | string | null: false |
| 郵便番号             | string | null: false |