class AddMoneyToRooms < ActiveRecord::Migration[5.0]
  def change
    add_column :rooms, :money, :integer
  end
end
