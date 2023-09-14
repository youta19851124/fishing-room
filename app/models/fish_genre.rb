class FishGenre < ActiveHash::Base
  self.data = [
    { id: 0, name: '魚の種類' },
    { id: 1, name: 'アジ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 2, name: 'イナダ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 3, name: 'カサゴ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 4, name: 'キス', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 5, name: 'クロダイ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 6, name: 'スズキ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 7, name: 'タイ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 8, name: 'ヒラメ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 9, name: 'ブリ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 10, name: 'マゴチ',size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' }
  ]

  include ActiveHash::Associations
  has_many :fishes
  has_many :catches

end