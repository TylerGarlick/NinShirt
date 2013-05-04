class Admin::ShirtTypesController < Admin::AdminBaseController

	before_filter :find_model
	
	def index
		@shirt_types = ShirtType.all
	end

	def new
		@shirt_type = ShirtType.new
	end

	def create
		@shirt_type = ShirtType.new(params[:shirt_type])
		if @shirt_type.save
			redirect_to_index('Shirt Type was saved successfully!')
		else
			render :action => 'new'
		end
	end

	def edit
		
	end

	def update
		if @shirt_type.update_attributes(params[:shirt_type])
			redirect_to_index('Shirt Type was updated successfully!')
		else
			render :action => 'edit'
		end
	end

	def destroy
		if @shirt_type.destroy
			redirect_to_index('Shirt Type was deleted successfully!')
		else
			redirect_to_index('There was an error deleting the Shirt Type!')
		end
	end
	
	private
	def find_model
		@shirt_type = ShirtType.find(params[:id]) if params[:id]
	end

	def redirect_to_index(message)
		redirect_to admin_shirt_types_url, :notice => message
	end

end
