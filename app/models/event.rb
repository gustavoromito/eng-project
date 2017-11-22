class Event < ApplicationRecord
	acts_as_commentable
	belongs_to :category, optional: true
	geocoded_by :address
	after_validation :geocode
	has_many :interested_users, class_name: 'UserInterest', foreign_key: 'event_id'
	has_many :reviews
	mount_uploader :image, AvatarUploader

end

