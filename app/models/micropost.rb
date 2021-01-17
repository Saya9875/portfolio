class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorite_relationships, dependent: :destroy
  has_many :liked_by, through: :favorite_relationships, source: :user
  has_many :replies
  has_one_attached :image
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 160 }
  validates :image,   content_type: { in: %w[image/jpeg image/gif image/png], message: "その画像ファイル形式は許可されていません" },
                      size: { less_than: 5.megabytes, message: "5MB以上は許可されていません" }

  # 表示用のリサイズ済み画像を返す
  def display_image
    image.variant(resize_to_limit: [400, 500])
  end

end
