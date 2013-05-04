class CreateOrderItems < ActiveRecord::Migration
  def self.up
    create_table :order_items do |t|
      t.integer :shirt_size_id
      t.integer :order_id
      t.integer :quantity
      t.float :price

      t.timestamps
    end
  end

  def self.down
    drop_table :order_items
  end
end
