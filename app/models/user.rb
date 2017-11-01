class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, :omniauth_providers => [:facebook]
  validates_presence_of :email, :password, :first_name

  has_many :interested_events, class_name: 'UserInterest', foreign_key: 'user_id'

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
