class CreateShirtPhotos < ActiveRecord::Migration
  def self.up
    create_table :shirt_photos do |t|
      t.integer :shirt_id
      t.string :gender
      t.integer :ordinal
      t.boolean :is_active

      t.timestamps
    end
  end

  def self.down
    drop_table :shirt_photos
  end
end
