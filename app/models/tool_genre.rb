class ToolGenre < ActiveHash::Base
  self.data = [
    { id: 0, name: '道具の種類' },
    { id: 1, name: 'ロッド(釣り竿)', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 2, name: 'リール', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 3, name: 'ライン(糸)', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 4, name: 'ルアー', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 5, name: 'タモ網', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
  ]

  include ActiveHash::Associations
  has_many :fishes

end