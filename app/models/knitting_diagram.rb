class KnittingDiagram < ApplicationRecord

  validates :square_outer, presence:true
  validates :square_center, presence:true
  validates :square_inner, presence:true

  belongs_to :user
end
