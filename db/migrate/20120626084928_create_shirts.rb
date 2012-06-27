class CreateShirts < ActiveRecord::Migration
  def change
    create_table :shirts do |t|
      t.integer :shop_id
      t.string :name
      t.text :description
      t.boolean :is_active
      t.boolean :is_approved

      t.timestamps
    end
  end
end
