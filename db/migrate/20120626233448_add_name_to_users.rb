class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :state, :string
    add_column :users, :country, :string
    add_column :users, :url, :string
    add_column :users, :is_public, :boolean
  end
end
