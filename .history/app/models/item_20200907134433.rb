class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :place
    validates :describe, length: { maximum: 98 }
    validates :user_id
  end
end