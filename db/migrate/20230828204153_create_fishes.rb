class CreateFishes < ActiveRecord::Migration[7.0]
  def change
    create_table :fish do |t|
      t.integer :fish_genre_id
      t.text :image
      t.string :size
      t.string :good_area
      t.string :good_season
      t.text :good_lure
      t.timestamps
    end
  end
end