class Mood < ApplicationRecord
  belongs_to :post

  validates :neme, presence:true

end
