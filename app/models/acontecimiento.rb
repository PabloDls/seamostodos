class Acontecimiento < ActiveRecord::Base
	mount_uploader :image, ImageAvatarUploader
end
