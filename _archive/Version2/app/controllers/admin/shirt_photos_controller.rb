class Admin::ShirtPhotosController < ApplicationController

	expose(:shirt)
	expose(:shirt_photos) { ShirtPhoto.all }
	expose(:shirt_photo)

  def index
  end

	def new
	end

	def create
		if shirt_photo.save(params[:shirt_photo])
			redirect_to_index('Shirt Photo was created successfully')
		else
			render :new
		end
	end

	def edit
	end

	def update
		if shirt_photo.update_attributes([:shirt_photo])
			redirect_to_index('Shirt Photo was updated successfully')
		else
			render :edit
		end
	end

	def destroy
		shirt_photo.destroy
		redirect_to_index('Shirt Photo was deleted successfully')
	end

		private
	def redirect_to_index(message)
		redirect_to admin_shirt_shirt_photos_url(shirt), :notice => message
	end

end
