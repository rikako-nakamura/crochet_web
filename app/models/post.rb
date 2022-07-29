class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  belongs_to :user
  belongs_to :category
  belongs_to :mood

  has_many :favorites

  validates :post_image, presence:true
  validates :finished_at, presence:true

  scope :by_category, ->(category_id) { where(category_id: category_id) }
  scope :by_mood, ->(mood_id) { where(mood_id: mood_id) }
end
