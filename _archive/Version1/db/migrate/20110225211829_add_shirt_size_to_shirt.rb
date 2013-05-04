class AddShirtSizeToShirt < ActiveRecord::Migration
  def self.up
    add_column :shirts, :mens_shirt_type_id, :integer
	  add_column :shirts, :womens_shirt_type_id, :integer
  end

  def self.down
    remove_column :shirts, :mens_shirt_type_id
	  remove_column :shirts, :womens_shirt_type_id
  end
end
