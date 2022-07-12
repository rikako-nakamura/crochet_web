class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  belongs_to :user

  has_many :categories, dependent: :destroy
  has_many :moods, dependent: :destroy
  has_many :favorites

  scope :by_category, ->(category_id) { where(category_id: category_id) }
  scope :by_mood, ->(mood_id) { where(mood_id: mood_id) }
end
