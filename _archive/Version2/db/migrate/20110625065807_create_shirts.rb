class CreateShirts < ActiveRecord::Migration
  def self.up
    create_table :shirts do |t|
	    t.integer :user_id
      t.string :name
      t.string :description
      t.decimal :price
      t.decimal :whole_sale_price
      t.boolean :is_active

      t.timestamps
    end
  end

  def self.down
    drop_table :shirts
  end
end
