class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_limit: [150,100]
  end

  def extension_white_list
  	%w(jpg jpeg gif png)
  end

  def default_url(*)
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default_event.jpg"].compact.join('_'))
  end
end
