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
|firstname|string|null: false, add_index :users, :name|
|lastname|string|null: false, add_index :users, :name|
|gender|string||
|birth|string||
|email|string|null: false, unique: true, add_index :users, :mail_adress|
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

### Association
- has_many :reservations
- has_many :rooms
- has_many :restaurants
- has_many :experiences
- has_many :frequencies


## reserationsテーブル

|Column|Type|Options|
|------|----|-------|
|check_in|string||
|check_out|string||
|number_people|string||
|user_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :user


## roomsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index :users, :name|
|image|string||
|phone|string||
|introduction|string||
|capasity_able|integer||
|bedroom|integer||
|bed_number|integer||
|bathroom|integer||
|location_country|string||
|postnumber|integer||
|location_prefecture|string||
|location|string||
|family|string||
|organization|string||
|pets|string||
|room_introduction|string||
|gest_area|string||
|gest_communication|string||
|other|string||
|area_information|string||
|transportation|string||
|reservation_deadline|string||
|checkin_date_available|string||
|checkin_time_available|string||
|reservation_reception_time|string||
|checkin_date|string||
|checkout_date|string||

### Association
- has_many :room_costs
- has_many :room_types
- has_many :bedroom_types
- has_many :room_capasitys
- has_many :room_categorys
- has_many :room_buildings
- has_many :room_amenitys
- has_many :room_rules
- has_many :room_notices
- belongs_to :user

## room_costsテーブル

|Column|Type|Options|
|------|----|-------|
|cost_minimum|integer||
|cost_maximum|integer||
|cost_base|integer||
|cuurrency|integer||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## room_typesテーブル

|Column|Type|Options|
|------|----|-------|
|type|string||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## bedroom_typesテーブル

|Column|Type|Options|
|------|----|-------|
|bedtype|string||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## room_capasitysテーブル

|Column|Type|Options|
|------|----|-------|
|capasity|integer||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## room_categorysテーブル

|Column|Type|Options|
|------|----|-------|
|category|string||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## room_buildingsテーブル

|Column|Type|Options|
|------|----|-------|
|building|string||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## room_amenitysテーブル

|Column|Type|Options|
|------|----|-------|
|necessities|boolean||
|wifi|boolean||
|shamoo|boolean||
|closet|boolean||
|television|boolean||
|heating|boolean||
|air_conditioning|boolean||
|breakfast|boolean||
|workingspace|boolean||
|firespace|boolean||
|iron|boolean||
|hairdryer|boolean||
|pet|boolean||
|private_entrance|boolean||
|smoke_detector|boolean||
|carbon_sensor|boolean||
|first_aid|boolean||
|disaster_card|boolean||
|fire_protection|boolean||
|door_key|boolean||
|livingroom|boolean||
|pool|boolean||
|kicthen|boolean||
|washing_machine|boolean||
|dry_machine|boolean||
|parking|boolean||
|elevator|boolean||
|jacuzzi|boolean||
|gym|boolean||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## room_rulesテーブル

|Column|Type|Options|
|------|----|-------|
|children|boolean||
|infant|boolean||
|pet|boolean||
|smoking|boolean||
|event|boolean||
|other_rule|string||
|room_id|reference|null:false, foreign_key: true|

### Association
- belongs_to :room

## room_noticesテーブル

|Column|Type|Options|
|------|----|-------|
|enable_climb_stair|boolean||
|potential_noise|boolean||
|pets_live|boolean||
|no_parking|boolean||
|shared_spaces|boolean||
|amenity_limitation|boolean||
|surveillance_or_recording_devices|boolean||
|weapons|boolean||
|dangerous_animals|boolean||

### Association
- belongs_to :room

## experiencesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index :users, :name|
|date|string||
|money|string||

### Association
- belongs_to :user

## restaurantsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index :users, :name|
|date|string||
|money|string||

### Association
- belongs_to :user

## frequenciesテーブル

|Column|Type|Options|
|------|----|-------|
|beginner|boolean||
|experienced_person|boolean||
|not_know|boolean||
|parttime|boolean||
|frequency|boolean||
|user_id|integer||

### Association
- belongs_to :user



***






















