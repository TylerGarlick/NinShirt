class Order < ActiveRecord::Base
	belongs_to :order_status
	belongs_to :user
	has_many :order_items

	def order_status
		self.order_status ||= OrderStatus.find_by_name 'Pending'
	end

end