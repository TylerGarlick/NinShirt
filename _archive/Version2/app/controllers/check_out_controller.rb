class CheckOutController < ApplicationController
  before_filter :login_required, :check_if_cart_is_empty

	expose(:order) { current_order }

  def index
    curent_order = set_user_to_current_order(current_order.id, current_user.id)
  end

  def update
	  current_order.update_attributes(params[:order])
	  redirect_to process_order_url
  end
	

  private
  def check_if_cart_is_empty
	  if order.order_items.nil? || order.order_items.length == 0
			redirect_to cart_empty_url
		end
  end

  def set_user_to_current_order(order_id, user_id)
    order = Order.find(order_id)
    order.user_id = user_id
    order.save
    order
  end
end