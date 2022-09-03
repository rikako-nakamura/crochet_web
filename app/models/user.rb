class User < ApplicationRecord
  has_secure_password
  generate_public_uid

  validates :name, presence:true
  validates :email, presence:true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }

  has_many :posts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_posts, through: :favorites, source: :post
  has_many :knitting_diagrams, dependent: :destroy

  def to_param
    public_uid
  end

  def favorite(post)
    favorite_posts << post
  end

  def unfavorite(post)
    favorite_posts.destroy(post)
  end

  def favorite?(post)
    favorite_posts.include?(post)
  end

end
