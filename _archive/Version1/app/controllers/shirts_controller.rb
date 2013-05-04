class ShirtsController < ApplicationController
	def index
		@shirts = Shirt.where(:is_active == true && :is_approved == true)
	end

	def show
		@shirt = Shirt.find(params[:id])
	end
end
