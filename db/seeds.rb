user = User.create(name: "Saya", 
                  profile: "OLです。トリキュラー歴５年です。",
                  email: "amsh222vegan@gmail.com", 
                  password: "foobar", 
                  password_confirmation: "foobar",
                  admin: true)
user.avatar.attach(io: File.open(Rails.root.join('app/assets/images/cat.jpg')),
                  filename: 'cat.jpg')

user2 = User.create(name: "ゆりあ", 
                  profile: "アラサー。生理痛重め😭",
                  email: "bbb@bbb.com", 
                  password: "foobar", 
                  password_confirmation: "foobar",)
user2.avatar.attach(io: File.open(Rails.root.join('app/assets/images/cat2.jpg')),
                  filename: 'cat2.jpg')

user3 = User.create(name: "マヤカ", 
                    profile: "高校３年📚受験勉強中！生理前はイライラやばい😇",
                    email: "ccc@ccc.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/himawari.jpg')),
                    filename: 'himawari.jpg')

user4 = User.create(name: "加藤", 
                    profile: "月経カップ初心者です",
                    email: "ddd@ddd.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user4.avatar.attach(io: File.open(Rails.root.join('app/assets/images/woman2.jpg')),
                    filename: 'woman2.jpg')
user4.microposts.create!(content: "おすすめの月経カップあったら教えてください！")

user5 = User.create(name: "千尋", 
                    profile: "休みの日はずっとNetflix見てます。生理の時は仕事行きたくなくなります。",
                    email: "eee@eee.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user5.avatar.attach(io: File.open(Rails.root.join('app/assets/images/harinezumi.jpg')),
                    filename: 'harinezumi.jpg')

user6 = User.create(name: "小野綾香", 
                    profile: "生理前はとにかく眠い〜。なんで生理あるの〜。",
                    email: "fff@fff.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user6.avatar.attach(io: File.open(Rails.root.join('app/assets/images/girl.jpg')),
                    filename: 'girl.jpg')

user7 = User.create(name: "Mizuki Takahashi", 
                    profile: "アメリカ留学中。日本にも避妊インプラント導入したい。",
                    email: "ggg@ggg.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user7.avatar.attach(io: File.open(Rails.root.join('app/assets/images/cat3.jpg')),
                    filename: 'cat3.jpg')

user8 = User.create(name: "しんじょうみさこ", 
                    profile: "看護士してます。最近は吸水ショーツ使ってます。トイレに長時間行けなくても安心です。",
                    email: "hhh@hhh.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user8.avatar.attach(io: File.open(Rails.root.join('app/assets/images/dog.jpg')),
                    filename: 'dog.jpg')

user9 = User.create(name: "佐々木 花穂", 
                    profile: "中学生です。ナプキン買えなくて困ってます。無料生理用品の情報が欲しいです。",
                    email: "iii@iii.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user9.avatar.attach(io: File.open(Rails.root.join('app/assets/images/flower.jpg')),
                    filename: 'flower.jpg')

user10 = User.create(name: "Nemoto Moe", 
                    profile: "生理不順歴30年のアラフィフです...皆さんと情報共有したいです。",
                    email: "jjj@jjj.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user10.avatar.attach(io: File.open(Rails.root.join('app/assets/images/dog2.jpg')),
                    filename: 'dog2.jpg')


#ツイート
user.microposts.create!(content: "初めまして！Sayaです。よろしくお願いします😄")
user.microposts.create!(content: "生理不順なので低容量ピルのトリキュラー飲んでます。ピル使ってる人どのくらいいるんだろう？")
user2.microposts.create!(content: "こんばんは🐱皆さんよろしくお願いします〜")
user2.microposts.create!(content: "今日はあまりに生理痛が酷くて会社休んでしまった😿")
user3.microposts.create!(content: "受験勉強中のため毎日スタバで勉強しています🙋‍♀️")
user3.microposts.create!(content: "生理前だから最近イライラやばいな💦")
user4.microposts.create!(content: "みんな月経カップでどこで購入してるんだろ？")
user4.microposts.create!(content: "月経カップを洗える場所を増やしてほしいな")
user5.microposts.create!(content: "Netflixの「ピリオドー羽ばたく女性たちー面白かった！")
user5.microposts.create!(content: "Netflixのセックスエデュケーション、新シーズンまだかな🥺")
user6.microposts.create!(content: "今日は生理だから家でゆっくりしよ〜")
user6.microposts.create!(content: "生理中って何でこんなに眠いんだろう〜")
user7.microposts.create!(content: "アメリカで売ってるタンポン大きすぎてびっくり笑")
user7.microposts.create!(content: "アメリカで避妊インプラントやってみたけど、毎日ピル飲まなくていいから楽〜。経血もほとんどなし。")
user8.microposts.create!(content: "初めまして。皆さんよろしくお願いします🙌")
user8.microposts.create!(content: "今日生理だけど夜勤なので...吸水ショーツ使います！")
user9.microposts.create!(content: "初めまして。家が貧しく、生理用品の入手に苦労しています😭皆さんよろしくお願いします。")
user9.microposts.create!(content: "無料生理用品情報を共有してもらえてとても助かります🙇‍♀️本当にありがとうございます！")
user10.microposts.create!(content: "アラフィフの方いらっしゃいますか？")
user10.microposts.create!(content: "生理不順と向き合うため、最近ヨガ始めました")


# 以下のリレーションシップを作成する
users = User.all
user  = users.first
following = users[2..9]
followers = users[3..10]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

#いいねする
microposts = Micropost.all
microposts = microposts[7..20]
user.like(microposts)
user2.like(microposts)
user3.like(microposts)

#商品
item = user.items.create!(name: "Nagi")
item.item_image.attach(io: File.open(Rails.root.join('app/assets/images/Nagi.jpg')), filename: 'Nagi.jpg')
