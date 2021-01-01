class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_many :microposts, dependent: :destroy
  has_one_attached :avatar
  
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }

  # 試作feedの定義
  # 完全な実装は次章の「ユーザーをフォローする」を参照
  def feed
    Micropost.where("user_id = ?", id)
  end

  # 表示用のリサイズ済み画像を返す
  def display_avatar
    avatar.variant(resize_to_limit: [200, 300])
  end

end
