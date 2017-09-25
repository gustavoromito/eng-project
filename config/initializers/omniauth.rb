
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :facebook, "1650688951621543",
 "686662515f5cfe8555ba50679559b47f", scope: 'public_profile', info_fields: 'id,first_name,last_name,email', 
 :client_options => { :ssl => { :verify => !Rails.env.development? } }
end