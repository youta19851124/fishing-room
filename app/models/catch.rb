class Catch < ApplicationRecord
  has_one_attached :image
  
  validates :title, presence: true
  validates :fishing, presence: true
  validates :area, presence: true
  validates :fish, presence: true
  validates :image, presence: true
  validates :content, presence: true
end
