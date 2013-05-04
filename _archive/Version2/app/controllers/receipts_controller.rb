class ReceiptsController < ApplicationController
  def show
    @order = current_order
    session[:order_id] = nil
  end
end
