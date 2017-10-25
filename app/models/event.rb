class Event < ApplicationRecord
	geocoded_by :address
	after_validation :geocode
	has_many :interested_users, class_name: 'UserInterest', foreign_key: 'event_id'
	mount_uploader :image, AvatarUploader
end

