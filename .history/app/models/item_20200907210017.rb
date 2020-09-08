class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :likes
  has_many :users, through: :likes

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  with_options presence: true do
    validates :image
    validates :name
    validates :place
    validates :describe, length: { maximum: 98 }
    validates :user_id
  end
end