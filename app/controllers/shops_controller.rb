class ShopsController < ApplicationController
  expose(:shops) { Shop.all_active }
  expose(:shop) { Shop.find_by_slug(params[:id]) }

  def index
  end

  def show
    if(shop.nil?)
      redirect_to not_found_shops_url
    else
      shop
    end
  end

  def not_found
  end

end
