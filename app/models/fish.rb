class Fish < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :fish_genre, class_name: 'FishGenre', foreign_key: :fish_genre_id
  belongs_to :catch
  has_one_attached :image

  
  validates :fish_genre_id, numericality: { other_than: 0, message: "can't be blank" }
end