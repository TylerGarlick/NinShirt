class ShirtsController < ApplicationController


	expose(:shirts) {Shirt.order(:created_at)}
  expose(:womens_shirts) {Shirt.womens.order('shirts.created_at')}
  expose(:mens_shirts) {Shirt.mens.order('shirts.created_at')}
	expose(:shirt)

  def index
  end

  def mens
  end

  def womens
  end

  def show
  end

end
