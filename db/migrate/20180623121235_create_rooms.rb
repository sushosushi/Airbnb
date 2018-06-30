class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string  :name, null: false
      t.string  :image
      t.string  :phone
      t.text    :introduction
      t.integer :room_type
      t.integer :room_category
      t.integer :building_type
      t.integer :maximum_capasity
      t.integer :bedroom_number
      t.integer :bed_number
      t.string  :bed_type
      t.integer :bathroom
      t.string  :location_country
      t.integer :postal_code
      t.string  :location_prefecture
      t.string  :location
      t.string  :family
      t.string  :organization
      t.string  :pets
      t.text    :room_introduction
      t.string  :gest_area
      t.string  :gest_communication
      t.text    :other
      t.string  :area_information
      t.string  :transportation
      t.string  :reservation_deadline
      t.string  :checkin_date_available
      t.string  :checkin_time_available
      t.string  :reservation_reception_time
      t.string  :checkin_date
      t.string  :checkout_date
      t.timestamps
    end
  end
end
