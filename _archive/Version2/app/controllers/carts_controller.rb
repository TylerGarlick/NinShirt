class CartsController < ApplicationController
	expose(:order) { current_order}

	def show
		if order.order_items.nil? || order.order_items.length == 0
			redirect_to cart_empty_url
		end
	end


	def edit
	end

	def update
		index = 0
		params[:ids].each do |id|
			order_item = current_order.order_items.where(:id => id).first
			if(params[:quantity].at(index).to_i > 0)
				order_item.quantity = params[:quantity].at(index)
				order_item.save
			else
				order_item.destroy
			end
			index += 1
		end

		current_order.save
		redirect_to carts_url, :notice => "Your cart was updated successfully!"
	end

	def add
		shirt_size = ShirtSize.find(params[:shirt_size])
		order_item = current_order.order_items.where(:shirt_size_id => shirt_size.id).first

		if order_item
			order_item.quantity += params[:quantity].to_i
			order_item.save
		else
			current_order.order_items << OrderItem.create(:shirt_size_id => params[:shirt_size], :quantity => params[:quantity], :price => shirt_size.shirt.price)
		end

		current_order.save
		redirect_to carts_url
	end

	def empty
		current_order.order_items.clear
		current_order.save!
	end
end
