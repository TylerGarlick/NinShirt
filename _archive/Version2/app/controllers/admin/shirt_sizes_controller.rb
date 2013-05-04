class Admin::ShirtSizesController < ApplicationController

	expose(:shirt)
	expose(:shirt_sizes) {ShirtSize.group(:gender)}
	expose(:shirt_size)
	
  def index
  end

	def new
	end

	def create
		shirt.shirt_sizes << ShirtSize.new(params[:shirt_size])
		if shirt.save
			redirect_to_index('Shirt Size was created successfully')
		else
			render :new
		end
	end

	def edit
	end

	def update
		if shirt_size.update_attributes([:shirt_size])
			redirect_to_index('Shirt Size was updated successfully')
		else
			render :edit
		end
	end

	def destroy
		shirt_size.destroy
		redirect_to_index('Shirt Size was deleted successfully')
	end

		private
	def redirect_to_index(message)
		redirect_to admin_shirt_shirt_sizes_url(shirt), :notice => message
	end

end
