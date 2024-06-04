puts "Cleaning database..."

Activity.destroy_all
Localler.destroy_all
User.destroy_all

puts "Creating users..."

users = [
  { email: 'guillaume@locally.com', password: '123456' },
  { email: 'luk@locally.com', password: '123456' },
  { email: 'mathieu@locally.com', password: '123456' },
  { email: 'aika@locally.com', password: '123456' },
  { email: 'pedro@locally.com', password: '123456' },
  { email: 'bruna@locally.com', password: '123456' },
  { email: 'aude@locally.com', password: '123456' },
  { email: 'kenta@locally.com', password: '123456' },
  { email: 'hugo@locally.com', password: '123456' },
  { email: 'caroline@locally.com', password: '123456' },
]

users.each do |user|
  User.create!(user)
end

puts "Creating locallers..."

locallers = [
  { description: 'It will be much better to visualize something one time than to hear it many times.', availability: true, location: 'Brussels'},
  { description: 'There was everywhere to go, and therefore, simply continue rolling beneath the stars.', availability: true, location: 'Paris' },
  { description: 'I travel for the sake of traveling. The main thing is to move.', availability: true, location: 'Rome'},
  { description: 'The guide you rely upon.', availability: true, location: 'Barcelona'},
  { description: 'Socializing is the basic and one of the most interesting parts of traveling.', availability: true, location: 'Bilbao'}
]

locallers.each_with_index do |localler, index|
  one_localler = Localler.new(localler)
  one_localler.user = User.all[index]
  one_localler.save!
end

puts "Creating activities..."

activities = [
  {title: 'Museums & Galleries'},
  {title: 'Eating & Drinking'},
  {title: 'Shopping'},
  {title: 'Unique experiences'},
  {title: 'Sports and Outdoors'},
  {title: 'Nightlife'},
  {title: 'Art & Culture'},
]
activities.each do |activity|
  Activity.create!(activity)
end

puts "Finished!"
