require "open-uri"

puts "Cleaning database..."

Meeting.destroy_all
Message.destroy_all
Chat.destroy_all
LocallerActivity.destroy_all
Activity.destroy_all
Localler.destroy_all
User.destroy_all

puts "Creating activities..."
museum = Activity.create!(title: 'Museums & Galleries')
food = Activity.create!(title: 'Eating & Drinking')
shopping = Activity.create!(title: 'Shopping')
outdoors = Activity.create!(title: 'Sports and Outdoors')
nightlife = Activity.create!(title: 'Nightlife')
unique = Activity.create!(title: 'Unique experiences')
art = Activity.create!(title: 'Art & Culture')
history = Activity.create!(title: 'History & Heritage')

puts "Creating users..."

guillaume = User.create!(email: 'guillaume@locally.com', password: '123456', username: 'Guillaume', bio: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
luk = User.create!(email: 'luk@locally.com', password: '123456', username: 'Luk', bio: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
mathieu = User.create!(email: 'mathieu@locally.com', password: '123456', username: 'Mathieu', bio: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
aika = User.create!(email: 'aika@locally.com', password: '123456', username: 'Aika', bio: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
pedro = User.create!(email: 'pedro@locally.com', password: '123456', username: 'Pedro', bio: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
bruna = User.create!(email: 'bruna@locally.com', password: '123456', username: 'Bruna', bio: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
aude = User.create!(email: 'aude@locally.com', password: '123456', username: 'Aude', bio: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
kenta = User.create!(email: 'kenta@locally.com', password: '123456', username: 'Kenta', bio: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
hugo = User.create!(email: 'hugo@locally.com', password: '123456', username: 'Hugo', bio: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')
caroline = User.create!(email: 'caroline@locally.com', password: '123456', username: 'Caroline', bio: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')

puts "Loading profile pics..."

avatar_guillaume = URI.open("https://avatars.githubusercontent.com/u/166691058?v=4")
avatar_luk = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1713302532/jxs9twp0kbtmkk73nwbt.jpg")
avatar_mathieu = URI.open("https://avatars.githubusercontent.com/u/167092397?v=4")
avatar_aika = URI.open("https://avatars.githubusercontent.com/u/108080915?v=4")
avatar_pedro = URI.open("https://avatars.githubusercontent.com/u/166991937?v=4")
avatar_bruna = URI.open("https://avatars.githubusercontent.com/u/162796074?v=4")
avatar_aude = URI.open("https://avatars.githubusercontent.com/u/163596389?v=4")
avatar_kenta = URI.open("https://avatars.githubusercontent.com/u/166846379?v=4")
avatar_hugo = URI.open("https://avatars.githubusercontent.com/u/167010398?v=4")
avatar_caroline = URI.open("https://avatars.githubusercontent.com/u/135339304?v=4")

guillaume.profile_picture.attach(io: avatar_guillaume, filename: "guy", content_type: "image/png")
luk.profile_picture.attach(io: avatar_luk, filename: "luk", content_type: "image/jpg")
mathieu.profile_picture.attach(io: avatar_mathieu, filename: "mathieu", content_type: "image/png")
aika.profile_picture.attach(io: avatar_aika, filename: "aika", content_type: "image/png")
pedro.profile_picture.attach(io: avatar_pedro, filename: "pedro", content_type: "image/png")
bruna.profile_picture.attach(io: avatar_bruna, filename: "bruna", content_type: "image/png")
aude.profile_picture.attach(io: avatar_aude, filename: "aude", content_type: "image/png")
kenta.profile_picture.attach(io: avatar_kenta, filename: "kenta", content_type: "image/png")
hugo.profile_picture.attach(io: avatar_hugo, filename: "hugo", content_type: "image/png")
caroline.profile_picture.attach(io: avatar_caroline, filename: "caroline", content_type: "image/png")

guillaume.save
luk.save
mathieu.save
aika.save
pedro.save
bruna.save
aude.save
kenta.save
hugo.save
caroline.save

puts "Creating locallers..."

guillaumel = Localler.create!(description: "Hello, I'm Guillaume from Brussels. As a passionate food lover and museum enthusiast, I enjoy exploring the culinary delights and rich art history of this beautiful city. Join me for a day of museum-hopping and taste the best of Belgian cuisine. I can guide you through hidden gems and share fascinating stories behind the art and food scenes in Brussels.", availability: true, location: 'Brussels', user: guillaume)
lukl = Localler.create!(description: "Hi, I'm Luk from Paris. I have a deep love for art and the outdoors. Whether it's a stroll through the city's iconic parks or a visit to lesser-known art galleries, I'm here to make your Paris experience unique and memorable. Let me show you the artistic soul of Paris, combined with refreshing outdoor activities that will give you a perfect blend of culture and nature.", availability: true, location: 'Paris', user: luk)
mathieul = Localler.create!(description: "Ciao, I'm Mathieu from Rome. If you're looking to experience the best of Roman shopping and nightlife, I'm your guide. I know all the chic boutiques and the hottest spots in town for an unforgettable night out. Join me for a day of retail therapy followed by an evening of vibrant nightlife, where ancient history meets modern fun.", availability: true, location: 'Rome', user: mathieu)
aikal = Localler.create!(description: "Hola, I'm Aika from Barcelona. With a passion for history and nightlife, I can show you the most fascinating historical sites during the day and the best nightlife spots by night. Barcelona's rich cultural heritage and lively nightlife scene are at your fingertips with me as your guide. Discover the secrets of this amazing city and party like a local.", availability: true, location: 'Barcelona', user: aika)
pedrol = Localler.create!(description: "Hi, I'm Pedro from Bilbao. I love combining outdoor adventures with art and food. Let me take you on a journey through Bilbao's stunning landscapes, vibrant art scene, and delectable cuisine. Whether it's a hike in the mountains or a visit to the Guggenheim, followed by tasting pintxos, you'll get a taste of the best Bilbao has to offer.", availability: true, location: 'Bilbao', user: pedro)
brunal = Localler.create!(description: "Hello, I'm Bruna from Madrid. Shopping and the great outdoors are my passions. I'll take you to the best shopping districts and then unwind with outdoor activities in Madrid's beautiful parks. Experience the hustle and bustle of the city and the tranquility of nature, all in one day with me as your guide. Let's explore Madrid's unique blend of urban and natural beauty.", availability: true, location: 'Madrid', user: bruna)
audel = Localler.create!(description: "Olá, I'm Aude from Lisbon. My heart beats for art and food. Discover Lisbon's artistic heritage through its galleries and street art, and savor the delicious local cuisine with me. From traditional dishes to modern culinary delights, I know where to find the best eats. Join me for an artistic and gastronomic adventure in the charming streets of Lisbon.", availability: true, location: 'Lisbon', user: aude)
kental = Localler.create!(description: "Hi, I'm Kenta from Berlin. If you're looking to dive into Berlin's legendary nightlife and food scene, look no further. I'll guide you through the best clubs, bars, and food spots in the city. From trendy street food markets to upscale dining, followed by an unforgettable night out, Berlin's vibrant energy awaits you. Let's explore the city's dynamic culture together.", availability: true, location: 'Berlin', user: kenta)
hugol = Localler.create!(description: "Hallo, I'm Hugo from Amsterdam. As a fan of shopping and history, I can show you the best of both worlds in this amazing city. Discover Amsterdam's rich history through its museums and historical sites, and enjoy a shopping spree in its trendy boutiques. With me, you'll get to experience the city's unique charm and vibrant past while indulging in some retail therapy.", availability: true, location: 'Amsterdam', user: hugo)
carolinel = Localler.create!(description: "Hi, I'm Caroline from London. I adore museums and food, and I can't wait to share London's treasures with you. From world-class museums to hidden culinary gems, I'll guide you through the best experiences the city has to offer. Whether you're a history buff or a foodie, you'll love exploring London with me. Let's make your visit truly unforgettable.", availability: true, location: 'London', user: caroline)

puts "Creating localler_activities..."

localler_activities = [

  { localler: guillaumel, activity: museum },
  { localler: guillaumel, activity: food },
  { localler: guillaumel, activity: nightlife },
  { localler: guillaumel, activity: outdoors },
  { localler: lukl, activity: art },
  { localler: lukl, activity: museum },
  { localler: lukl, activity: outdoors },
  { localler: lukl, activity: history },
  { localler: lukl, activity: unique },
  { localler: lukl, activity: food },
  { localler: mathieul, activity: nightlife },
  { localler: mathieul, activity: shopping },
  { localler: mathieul, activity: art },
  { localler: mathieul, activity: museum },
  { localler: aikal, activity: history },
  { localler: aikal, activity: nightlife },
  { localler: aikal, activity: shopping },
  { localler: aikal, activity: art },
  { localler: aikal, activity: food },
  { localler: pedrol, activity: outdoors },
  { localler: pedrol, activity: art },
  { localler: pedrol, activity: food },
  { localler: pedrol, activity: nightlife },
  { localler: brunal, activity: unique },
  { localler: brunal, activity: outdoors },
  { localler: brunal, activity: shopping },
  { localler: audel, activity: art },
  { localler: audel, activity: food },
  { localler: audel, activity: shopping },
  { localler: kental, activity: museum },
  { localler: kental, activity: art },
  { localler: kental, activity: food },
  { localler: kental, activity: nightlife },
  { localler: hugol, activity: shopping },
  { localler: hugol, activity: history },
  { localler: hugol, activity: outdoors },
  { localler: carolinel, activity: museum },
  { localler: carolinel, activity: food }
]

localler_activities.each do |localler_activity|
  LocallerActivity.create!(localler_activity)
end

puts "Finished!"
