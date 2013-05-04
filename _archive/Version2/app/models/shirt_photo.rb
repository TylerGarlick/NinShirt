class ShirtPhoto < ActiveRecord::Base
	belongs_to :shirt
	mount_uploader :photo_url, ShirtPhotoUploader
end
