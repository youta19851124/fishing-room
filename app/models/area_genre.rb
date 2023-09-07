class AreaGenre < ActiveHash::Base
  self.data = [
    { id: 0, name: 'エリア一覧' },
    { id: 1, name: '苫小牧港堤防', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 2, name: '釜谷浜海水浴場', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 3, name: '有明西ふ頭公園', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 4, name: '久留和', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 5, name: '浜岡海岸', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 6, name: '田尻港', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 7, name: 'サノヤスドッグ', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' },
    { id: 8, name: '英虞湾', size: '10cm~30cm程', good_area: '全国', good_season: '5月〜11月', good_lure: 'ミジンコ1.8g', image: 'アジ.png' }
  ]

  include ActiveHash::Associations
  has_many :fishes

end