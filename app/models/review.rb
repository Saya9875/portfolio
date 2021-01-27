class Review < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :score, presence: true

  def review_score
    unless score.blank?
      score.round(1).to_f*100/5
    else
      0.0
    end
  end
  
end
