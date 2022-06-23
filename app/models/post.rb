class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  belongs_to :user

  has_many :categories, dependent: :destroy
  has_many :moods, dependent: :destroy
  has_many :favorites

end
