class CreateShops < ActiveRecord::Migration
  def self.up
    create_table :shops do |t|
      t.string :name
      t.integer :user_id
      t.boolean :is_active

      t.timestamps
    end
  end

  def self.down
    drop_table :shops
  end
end
