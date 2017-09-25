
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :facebook, "APP_ID",
 "APP_SECRET", scope: 'public_profile', info_fields: 'id,name,link'
end