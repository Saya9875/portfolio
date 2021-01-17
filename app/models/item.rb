class Item < ApplicationRecord
  belongs_to       :user
  has_one_attached :item_image
  validates        :name, presence: true
  validates        :item_image, content_type: { in: %w[image/jpeg image/gif image/png],
                    message: "must be a valid image format" }, size: { less_than: 5.megabytes,
                    message: "should be less than 5MB" }

  
  def display_item_image
    item_image.variant(resize_to_limit: [500, 500])
  end
end
