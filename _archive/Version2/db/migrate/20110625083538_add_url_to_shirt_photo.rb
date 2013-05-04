class AddUrlToShirtPhoto < ActiveRecord::Migration
  def self.up
    add_column :shirt_photos, :photo_url, :string
  end

  def self.down
    remove_column :shirt_photos, :photo_url
  end
end
