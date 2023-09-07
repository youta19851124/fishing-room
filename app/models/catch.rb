class Catch < ApplicationRecord
  has_one_attached :image
  belongs_to :user
  has_many :comments
  has_many :fishes
  
  validates :title, presence: true
  validates :fishing, presence: true
  validates :area, presence: true
  validates :fish, presence: true
  validates :image, presence: true
  validates :content, presence: true

  def self.search(search)
    if search != ""
      Catch.where('title LIKE(?)', "%#{search}%")
    else
      Catch.all
    end
  end
end
