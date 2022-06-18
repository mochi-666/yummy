# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: "aa@ss",
  password: "223344"
)
Genre.create!(
  name: "和食",
)
Genre.create!(
  name: "洋食",
)
Genre.create!(
  name: "中華",
)
Genre.create!(
  name: "イタリアン",
)
Genre.create!(
  name: "フレンチ",
)
Genre.create!(
  name: "スイーツ",
)
Genre.create!(
  name: "カフェ",
)
Genre.create!(
  name: "ビストロ",
)
Genre.create!(
  name: "BAR",
)
Scene.create!(
  name: "デート向け",
  )
Scene.create!(
  name: "お手頃",
  )
Scene.create!(
  name: "高級",
  )
Scene.create!(
  name: "居酒屋",
  )
Scene.create!(
  name: "宴会",
  )
Scene.create!(
  name: "個室",
  )
Atmosphere.create!(
  name: "インスタ映え",
  )
Atmosphere.create!(
  name: "カジュアル",
  )
Atmosphere.create!(
  name: "内装おしゃれ",
  )
Atmosphere.create!(
  name: "ドレスコード",
  )
Atmosphere.create!(
  name: "要予約",
  )
Atmosphere.create!(
  name: "子供も楽しめる",
  )
Atmosphere.create!(
  name: "落ち着いた雰囲気",
  )
