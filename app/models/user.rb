class User < ActiveRecord::Base

	def self.create_with_omniauth(auth)
	  user = find_or_create_by(uid: auth.uid, provider:  auth.provider)
	  user.email =  auth.info.email
	  user.email ||= "#{auth.uid}@#{auth.provider}.com"
	  user.password = auth.uid
	  user.first_name = auth.info.first_name
	  user.last_name = auth.info.last_name
	  user.save!
	  user
	end

end
