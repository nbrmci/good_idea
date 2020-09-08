class Item < ApplicationRecord
  belongs_to :user
  has_one_attched :image

  with_options presence: true do
    validates :image
    validates :name
    validates :place
    validates :describe
  end
end