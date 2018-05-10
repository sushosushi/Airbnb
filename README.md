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

***

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index :users, :name|
|gender|string||
|birth|string||
|mail_adress|string|null: false, unique: true, add_index :users, :mail_adress|
|phone|string||
|image|string||
|desplay_language|string||
|currency|string||
|address|string||
|self_introduction|string||
|school|string||
|company|string||
|standard_time|string||
|business_mail|string||

___

## reserationsテーブル

|Column|Type|Options|
|------|----|-------|
|first_date|string||
|end_date|string||
|number_people|string||
|user_id|integer|null:false, foreign_key: true|
|room_id|integer|null:false, foreign_key: true|

___

## roomsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index :users, :name|
|address|string||
|money|string||


## room_typesテーブル

|Column|Type|Options|
|------|----|-------|
|type|string||
|room_id|integer|null:false, foreign_key: true|

## room_capasitiesテーブル

|Column|Type|Options|
|------|----|-------|
|capasity|integer||
|room_id|integer|null:false, foreign_key: true|

***






















