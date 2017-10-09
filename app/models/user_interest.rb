class UserInterest < ApplicationRecord
	belongs_to :user, class_name: 'User', foreign_key: 'user_id'
	belongs_to :event, class_name: 'Event', foreign_key: 'event_id'

	def self.create_interest(user, event)
		interest = UserInterest.where(user: user, event: event)
		return unless !interest

		UserInterest.create(user: user, event: event).save
	end
end
