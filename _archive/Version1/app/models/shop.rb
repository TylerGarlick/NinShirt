class Shop < ActiveRecord::Base
	belongs_to :user
	has_many :shirts

	has_attached_file :logo,
	                  :storage => :s3,
	                  :s3_credentials => "#{Rails.root}/config/s3.yml",
										:styles => { :normal => "300x400>", :small => ["100x100>"] }

	validates_attachment_presence :logo
	validates_attachment_content_type :logo, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/jpg']
	validates_presence_of :name, :user_id
	validates_uniqueness_of :name

end
