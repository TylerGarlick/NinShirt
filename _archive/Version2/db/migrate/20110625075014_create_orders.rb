class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :order_status_id
      t.decimal :subtotal
      t.decimal :shipping
      t.decimal :tax
      t.decimal :total
      t.string :shipping_first_name
      t.string :shipping_last_name
      t.string :shipping_email_address
      t.string :shipping_address
      t.string :shipping_address2
			t.string :shipping_city
      t.string :shipping_state
      t.string :shipping_zip
			t.string :shipping_method
      t.string :shipping_method_tracking
      t.boolean :is_po_box
      t.string :billing_first_name
      t.string :billing_last_name
      t.string :billing_email_address
      t.string :billing_address
      t.string :billing_address2
			t.string :billing_city
      t.string :billing_state
      t.string :billing_zip

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
