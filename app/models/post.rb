class Post < ApplicationRecord
  belongs_to :user, optional: true
  mount_uploader :avatar, AvatarUploader
end
