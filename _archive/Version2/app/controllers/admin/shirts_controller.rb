class Admin::ShirtsController < ApplicationController

	expose(:shirts) {Shirt.order(:name)}
	expose(:shirt)
	
	def index
		
  end

	def show
		
	end

	def new
		
	end

	def create
		if shirt.save(params[:shirt])
			redirect_to_index('Shirt was create successfully.')
		else
			render :new
		end
	end

	def edit
		
	end

	def update
		if shirt.update_attributes(params[:shirt])
			redirect_to_index('Shirt was updated successfully.')
		else
			render :edit
		end
	end

	def destroy
		shirt.destroy
		redirect_to_index('Shirt was deleted successfully.')
	end

	private
	def redirect_to_index(message)
		redirect_to admin_shirts_url, :notice => message
	end

end
