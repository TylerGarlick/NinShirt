class AddIsPrimaryToShirtPhoto < ActiveRecord::Migration
  def self.up
    add_column :shirt_photos, :is_primary, :boolean
  end

  def self.down
    remove_column :shirt_photos, :is_primary
  end
end
