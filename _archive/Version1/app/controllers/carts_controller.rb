class CartsController < ApplicationController
	respond_to :json, :only => :create
	respond_to :html, :except => :create

	def show
		@current_order = current_order
	end

	def create
		order_item = current_order.order_items.where(:shirt_size_id => params[:shirt_size_id]).first

		if order_item
			order_item.quantity += 1
			order_item.save
		else
			order_item = add_shirt_size_to_cart(params[:shirt_size_id], params[:price])
 			current_order.order_items << order_item
			current_order.save
		end

		render :json => order_item
	end

	def destroy 
		order_item = current_order.order_items.find(params[:id])
		order_item.destroy
		current_order.save
		redirect_to cart_path, :notice => 'Item was removed successfully from your cart.'
	end
	
	
	private
	def add_shirt_size_to_cart(shirt_size_id, price)
		shirt_size = ShirtSize.find(shirt_size_id)
		price ||= shirt_size.shirt.price
		OrderItem.new(:quantity => 1, :shirt_size => shirt_size, :price => price)
	end
end