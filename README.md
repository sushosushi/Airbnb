# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|first_name|string|null: false, add_index :users, :name|
|last_name|string|null: false, add_index :users, :name|
|gender|integer||
|birthday|string||
|email|string|null: false, unique: true, add_index :users, :mail_adress|
|phone_number|string||
|image|string||
|display_language|string||
|currency|string||
|address|string||
|self_introduction|string||
|school_name|string||
|company_name|string||
|standard_time|string||
|business_email|string||

### Association
- has_many :reservations
- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :restaurants
- has_many :experiences
- has_many :frequencies

## room_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|foreign_key: true|
|room|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :room

## reservationsテーブル

|Column|Type|Options|
|------|----|-------|
|check_in|string||
|check_out|string||
|total_guest|integer||
|user|references|null:false, foreign_key: true|
|room|references|null:false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :room

## roomsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string||
|phone|string||
|introduction|string||
|room_type|integer||
|room_category|integer||
|building_type|integer||
|maximum_capasity|integer||
|bedroom_number|integer||
|bed_number|integer||
|bed_type|string||
|bathroom|integer||
|location_country|string||
|postal_code|integer||
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
- has_one  :room_rate, dependent: :destroy
- has_one  :room_rules, dependent: :destroy
- has_one  :room_notices, dependent: :destroy
- has_many :reservations
- has_many :room_users
- has_many :users, through: :room_users
- has_many :amenities
- has_many :facilities

## room_ratesテーブル

|Column|Type|Options|
|------|----|-------|
|rate_minimum|integer||
|rate_maximum|integer||
|rate_base|integer||
|cuurrency|integer||
|room|references|null:false, foreign_key: true|

### Association
- belongs_to :room

## amenitiesテーブル

|Column|Type|Options|
|------|----|-------|
|necessities|boolean||
|wifi|boolean||
|shampoo|boolean||
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
|room|references|null:false, foreign_key: true|

### Association
- belongs_to :room

## facilitiesテーブル

|Column|Type|Options|
|------|----|-------|
|pool|boolean||
|kicthen|boolean||
|washing_machine|boolean||
|dry_machine|boolean||
|parking|boolean||
|elevator|boolean||
|jacuzzi|boolean||
|gym|boolean||

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
|room|references|null:false, foreign_key: true|

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
|user|integer||

### Association
- belongs_to :user
***






















