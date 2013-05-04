class AddGenderToShirtTypes < ActiveRecord::Migration
  def self.up
    add_column :shirt_types, :gender, :string
  end

  def self.down
    remove_column :shirt_types, :gender
  end
end