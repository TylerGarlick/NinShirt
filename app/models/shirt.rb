class Shirt < ActiveRecord::Base
  validates_presence_of :name, :shop

  attr_accessible :description, :is_active, :is_approved, :name, :shop_id

  belongs_to :shop
  has_many :shirt_sizes

end
