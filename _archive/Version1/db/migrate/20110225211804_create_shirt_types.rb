class CreateShirtTypes < ActiveRecord::Migration
  def self.up
    create_table :shirt_types do |t|
      t.string :name
      t.string :description
      t.string :color

      t.timestamps
    end
  end

  def self.down
    drop_table :shirt_types
  end
end
