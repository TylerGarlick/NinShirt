class Admin::OrdersController < ApplicationController
  before_filter :login_required

	expose(:orders) {Order.all}
	expose(:order)
	
	def index
	end

	def show
	end

	def new
	end

	def create
		if order.save(params[:order])
			redirect_to_index 'Order was created successfully!'
		else
			render :new
		end
	end

	def edit
	end

	def update
		if order.update_attributes(params[:order])
			redirect_to_index 'Order was update successfully!'
		else
			render :edit
		end
	end

	def destroy
		order.destroy
		redirect_to_index 'Order was deleted successfully!'
	end

	private
	def redirect_to_index(message)
		redirect_to admin_orders_url, :notice => message
	end

end
