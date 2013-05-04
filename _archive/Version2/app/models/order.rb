class Order < ActiveRecord::Base
	
  before_save :update_totals
  before_create :initialize_order

	has_many :order_items
	belongs_to :order_status
	belongs_to :user


  private

  def initialize_order
   self.order_status_id = OrderStatus.find_by_name('Pending').id
  end

	def update_totals
		update_subtotal
		update_shipping
		update_tax
		update_total
	end

	def update_subtotal
		self.subtotal = 0
		order_items.each do |oi|
			self.subtotal += (oi.price * oi.quantity)
		end
	end

	def update_shipping
		self.shipping = 5
	end

	def update_tax
		self.tax = 0
		if billing_state == 'UT'
			self.tax = (subtotal * 0.065)
		end
	end

	def update_total
		self.total = (self.subtotal + self.tax + self.shipping)
	end

end