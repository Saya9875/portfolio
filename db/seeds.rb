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
                    profile: "高校３年📚もうすぐ受験！生理前はイライラやばい😇",
                    email: "ccc@ccc.com", 
                    password: "foobar", 
                    password_confirmation: "foobar",)
user3.avatar.attach(io: File.open(Rails.root.join('app/assets/images/himawari.jpg')),
                    filename: 'himawari.jpg')
  