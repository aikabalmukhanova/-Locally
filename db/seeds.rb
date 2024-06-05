puts "Cleaning database..."

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
caroline = User.create!(email: 'caroline@locally.com', password: '123456' , username: 'Caroline', bio: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.')

puts "Creating locallers..."

guillaumel = Localler.create!(description: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Brussels', user: guillaume)
lukl = Localler.create!(description: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Paris', user: luk)
mathieul = Localler.create!(description: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Rome', user: mathieu)
aikal = Localler.create!(description: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Barcelona', user: aika)
pedrol = Localler.create!(description: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Bilbao', user: pedro)
brunal = Localler.create!(description: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Madrid', user: bruna)
audel = Localler.create!(description: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Lisbon', user: aude)
kental = Localler.create!(description: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Berlin', user: kenta)
hugol = Localler.create!(description: 'I am a software engineer and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'Amsterdam', user: hugo)
carolinel = Localler.create!(description: 'I am a student and I love to travel. I am always looking for new experiences and I am happy to share my knowledge with you.', availability: true, location: 'London', user: caroline)

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
