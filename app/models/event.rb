class Event < ApplicationRecord
	has_many :interested_users, class_name: 'UserInterest', foreign_key: 'event_id'
end
