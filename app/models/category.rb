class Category < ApplicationRecord
  belongs_to :post

  validates :neme, presence:true
end
