class Admin::ShopsController < Admin::AdminBaseController

	before_filter :find_model

	def index
		@shops = Shop.all
	end

	def new
		@shop = Shop.new(:is_active => true)
	end

	def create
		@shop = Shop.new(params[:shop])
		if @shop.save
			redirect_to admin_shops_path, :notice => 'Shop was created successfully!'
		else
			render :action => 'new'
		end
	end

	def edit

	end

	def update
		if @shop.update_attributes(params[:shop])
			redirect_to admin_shops_path, :notice => 'Shop was updated successfully!'
		else
			render :action => 'edit'
		end
	end

	def destroy
		if @shop.destroy
			redirect_to admin_shops_path, :notice => 'Shop was deleted successfully!'
		else
			render :action => 'index'
		end
	end

	private
	def find_model
		@shop = Shop.find(params[:id]) if params[:id]
	end
end