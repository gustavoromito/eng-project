OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '110684611936-m7lcbtku034ij5tsl2euunsnqb5rrp01.apps.googleusercontent.com', 'TYgiCvJhMBrpAhbJqD6SBOlU', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end