class AddFieldToShirtSizes < ActiveRecord::Migration
  def self.up
    add_column :shirt_sizes, :size_code, :string
  end

  def self.down
    remove_column :shirt_sizes, :size_code
  end
end
