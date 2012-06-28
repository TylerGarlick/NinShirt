class ShirtsController < ApplicationController
  expose(:shop)
  expose(:shirts) {shop.shirts}
  expose(:shirt)

  def show
  end
end
