class ShirtSize < ActiveRecord::Base
	belongs_to :shirt
	belongs_to :order_item
end
