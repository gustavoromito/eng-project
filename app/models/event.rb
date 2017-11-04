class Event < ApplicationRecord
	belongs_to :category, optional: true
	geocoded_by :address
	after_validation :geocode
	has_many :interested_users, class_name: 'UserInterest', foreign_key: 'event_id'
	mount_uploader :image, AvatarUploader

end

