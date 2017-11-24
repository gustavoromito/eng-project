class Merit < ApplicationRecord

	validates_presence_of :name, :points, :achievement
	
end