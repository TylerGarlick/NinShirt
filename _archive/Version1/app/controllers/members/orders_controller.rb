class Members::OrdersController < Members::MembersBaseController
	def index
		@orders = current_user.orders.where(:order_status != OrderStatus.find_by_name("Pending"))
	end


end
