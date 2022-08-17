class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  belongs_to :user
  belongs_to :category
  belongs_to :mood

  has_many :favorites

  validates :finished_at, presence:true
  scope :by_category, ->(category_id) { where(category_id: category_id) }
  scope :by_mood, ->(mood_id) { where(mood_id: mood_id) }
  
  def split_id_from_youtube_url
    youtube_url.split('/').last if youtube_url.present?
  end

end
