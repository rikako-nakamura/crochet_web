class Post < ApplicationRecord
  belongs_to :user

  has_many :categories, dependent: :destroy
  has_many :moods, dependent: :destroy

end
