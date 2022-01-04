class Post < ApplicationRecord
  validates :title, presence: true
  validates :user_id, presence: true #reject anonymous posts

  belongs_to :user, required: false  
end
