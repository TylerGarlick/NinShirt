class CreateShirtSizes < ActiveRecord::Migration
  def change
    create_table :shirt_sizes do |t|
      t.integer :shirt_id
      t.string :gender
      t.string :size

      t.timestamps
    end
  end
end
