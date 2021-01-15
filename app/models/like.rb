class Like < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  default_scope -> { order(created_at: :desc) }
  counter_culture :micropost
  validates :user_id, presence: true
  validates :micropost_id, presence: true
end
