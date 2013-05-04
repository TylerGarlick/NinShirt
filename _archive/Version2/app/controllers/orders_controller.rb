class OrdersController < ApplicationController
  before_filter :login_required

  expose(:order)

  def show

  end
end
