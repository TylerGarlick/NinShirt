class CreateShirtSizes < ActiveRecord::Migration
  def self.up
    create_table :shirt_sizes do |t|
      t.integer :shirt_id
      t.string :name
      t.string :gender
      t.boolean :is_active

      t.timestamps
    end
  end

  def self.down
    drop_table :shirt_sizes
  end
end
