class Shirt < ActiveRecord::Base
	belongs_to :user

	validates_presence_of :name
	validates_uniqueness_of :name
	validates_numericality_of :price, :whole_sale_price

	has_many :shirt_sizes
	has_many :shirt_photos

	scope :active, where(:is_active => true)

	scope :womens, lambda {
		active.includes(:shirt_sizes).where('shirt_sizes.gender = ?', "Womens")
	}

	scope :mens, lambda {
		active.includes(:shirt_sizes).where('shirt_sizes.gender = ?', "Mens")
	}


end
