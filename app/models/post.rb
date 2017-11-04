class Post < ApplicationRecord
  belongs_to :user, optional: true

  validates_presence_of :content, :user_id
end
