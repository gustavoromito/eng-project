
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
 provider :facebook, "1650688951621543",
 "686662515f5cfe8555ba50679559b47f", scope: 'public_profile', info_fields: 'id,first_name,last_name,email', 
 :client_options => { :ssl => { :verify => !Rails.env.development? } }


 #Gabriel
 provider :google_oauth2, '110684611936-en7bhj9uajc2v8hng055co375685lgvg.apps.googleusercontent.com', 'UEMlIHhq_22_PidBPifTmbyT', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

end