class Post < ApplicationRecord
  belongs_to :user, optional: true
  acts_as_votable
  validates_presence_of :content, :user_id
end