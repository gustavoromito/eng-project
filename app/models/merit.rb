class Merit < ApplicationRecord
	validates_presence_of :name, :points, :achievement
	mount_uploader :image, AvatarUploader
end