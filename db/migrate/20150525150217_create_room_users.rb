class CreateRoomUsers < ActiveRecord::Migration
  def change
    create_table :room_users do |t|
      t.references :room, null: false
      t.references :user, null: false

      t.timestamps null: false
    end

    add_index :room_users, [ :room_id, :user_id ], unique: true
    add_foreign_key :room_users, :rooms
    add_foreign_key :room_users, :users
  end
end
