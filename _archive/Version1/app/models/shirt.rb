class Shirt < ActiveRecord::Base

	belongs_to :shop
	has_many :shirt_sizes
	has_one :mens_shirt_type, :foreign_key => :mens_shirt_type_id, :class_name => 'ShirtType'
	has_one :womens_shirt_type, :foreign_key => :womens_shirt_type_id, :class_name => 'ShirtType'

	has_attached_file :photo,
	                  :storage => :s3,
	                  :s3_credentials => "#{Rails.root}/config/s3.yml",
										:styles => { :large => "800x600>", :normal => "300x400#", :small => ["100x100>"] },
										:default_style => :normal

	has_attached_file :splashscreen,  :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml"


	validates_attachment_presence :photo
	validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/jpg']
	validates_attachment_content_type :splashscreen, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/jpg']

end