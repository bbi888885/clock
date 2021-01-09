# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| nickname    | string     | null: false,                   |
| occupation  | string     | null: false,                   |
| goal        | string     | null: false,                   |

### Association
- has_many   :theme


## themes テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| subject       | string     | null: false,                   |
| required_hour | integer    | null: false,                   |
| user          | reference  | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many   :starttime
- has_many   :endtime

## starttimes テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| theme         | reference  | null: false, foreign_key: true |
| user          | reference  | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :theme

## endtimes テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| theme         | reference  | null: false, foreign_key: true |
| user          | reference  | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :theme