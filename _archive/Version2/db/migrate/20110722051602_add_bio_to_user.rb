class AddBioToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :bio, :text
    add_column :users, :birthday, :datetime
	  add_column :users, :website, :string
  end

  def self.down
    remove_column :users, :birthday
    remove_column :users, :bio
	  remove_column :users, :website
  end
end