class ShirtSize < ActiveRecord::Base
	belongs_to :shirt

	has_many :order_items
end
