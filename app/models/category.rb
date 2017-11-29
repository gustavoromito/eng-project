class Category < ApplicationRecord
	has_many :events

	validates_presence_of :name
end
