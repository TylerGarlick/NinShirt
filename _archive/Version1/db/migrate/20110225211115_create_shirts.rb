class CreateShirts < ActiveRecord::Migration
  def self.up
    create_table :shirts do |t|
	    t.integer :shop_id
      t.string :name
      t.string :description
      t.float :price
      t.float :wholesale_price
      t.boolean :is_active
      t.boolean :is_approved

      t.timestamps
    end
  end

  def self.down
    drop_table :shirts
  end
end
