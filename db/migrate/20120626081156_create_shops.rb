class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.boolean :is_active
      t.string :slug

      t.timestamps
    end

    add_index :shops, :slug, unique: true
  end
end
