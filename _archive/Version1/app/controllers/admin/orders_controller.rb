class Admin::OrdersController < Admin::AdminBaseController
	def index
		if params[:show_all]
			@orders = Order.all
		else
			@orders = Order.where(:order_status != OrderStatus.find_by_name('Pending'))
		end
	end
end
