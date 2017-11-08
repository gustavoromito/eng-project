class Post < ApplicationRecord
  acts_as_commentable
  belongs_to :user, optional: true

  validates_presence_of :content, :user_id
end
