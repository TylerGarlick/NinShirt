class Admin::ShirtsController < Admin::AdminBaseController

	before_filter :find_model

	def index
		@shirts = Shirt.all
	end

	def new
		@shirt = Shirt.new
	end

	def create
		@shirt = Shirt.new(params[:shirt])
		create_mens_shirt_sizes @shirt
		create_womens_shirt_sizes @shirt
		if @shirt.save
			redirect_to_index 'Shirt was created successfully!'
		else
			render :action => 'new'
		end
	end

	def edit

	end

	def update
		if @shirt.update_attributes(params[:shirt])
			redirect_to_index 'Shirt was updated successfully!'
		else
			render :action => 'edit'
		end
	end

	def destroy

	end

	private
	def find_model
		@shirt = Shirt.find(params[:id]) if params[:id]
	end

	def redirect_to_index(message)
		redirect_to admin_shirts_path, :notice => message
	end

	def create_mens_shirt_sizes(shirt)
		shirt.shirt_sizes << ShirtSize.new(:name => 'S', :gender => 'M', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => 'M', :gender => 'M', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => 'L', :gender => 'M', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => 'XL', :gender => 'M', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => '2X', :gender => 'M', :is_active => true )
	end

	def create_womens_shirt_sizes(shirt)
		shirt.shirt_sizes << ShirtSize.new(:name => 'S', :gender => 'W', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => 'M', :gender => 'W', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => 'L', :gender => 'W', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => 'XL', :gender => 'W', :is_active => true )
		shirt.shirt_sizes << ShirtSize.new(:name => '2X', :gender => 'W', :is_active => true )
	end
end
