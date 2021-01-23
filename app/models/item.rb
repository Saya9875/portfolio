class Item < ApplicationRecord
  belongs_to       :user
  has_many         :reviews, dependent: :destroy
  has_one_attached :item_image
  validates        :name, presence: true
  validates        :item_image_name, presence: true
  validates        :item_image, content_type: { in: %w[image/jpeg image/gif image/png],
                    message: "must be a valid image format" }, size: { less_than: 5.megabytes,
                    message: "should be less than 5MB" }

  def display_item_image
    item_image.variant(resize_to_limit: [500, 500])
  end

  def avg_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end

end
