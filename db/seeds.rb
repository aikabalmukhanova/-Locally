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
emma_kim = User.create!(email: 'emma.kim@locally.com', password: '123456', username: 'Emma Kim', bio: "I am a food lover from Seoul, passionate about exploring the city's culinary delights and vibrant nightlife.")
li_mei = User.create!(email: 'li.mei@locally.com', password: '123456', username: 'Li Mei', bio: "A local history buff from Beijing, passionate about sharing the city's ancient stories and unique art.")
hiroshi_sato = User.create!(email: 'hiroshi.sato@locally.com', password: '123456', username: 'Hiroshi Sato', bio: "Art enthusiast from Tokyo who enjoys exploring unique art scenes and vibrant shopping districts.")
maria_oliveira = User.create!(email: 'maria.oliveira@locally.com', password: '123456', username: 'Maria Oliveira', bio: "Lover of nightlife from Rio de Janeiro, eager to show you the city's vibrant night scene and beautiful outdoors.")
elena_smirnova = User.create!(email: 'elena.smirnova@locally.com', password: '123456', username: 'Elena Smirnova', bio: "Museum aficionado from Moscow, passionate about art and history.")
sophie_martin = User.create!(email: 'sophie.martin@locally.com', password: '123456', username: 'Sophie Martin', bio: "Shopping expert from Paris, ready to guide you through the city's best boutiques and unique art galleries.")
giulia_rossi = User.create!(email: 'giulia.rossi@locally.com', password: '123456', username: 'Giulia Rossi', bio: "Food and wine lover from Rome, excited to share Italian culinary delights and the city's rich history.")
jack_wilson = User.create!(email: 'jack.wilson@locally.com', password: '123456', username: 'Jack Wilson', bio: "Outdoor enthusiast from Vancouver, passionate about nature and adventure.")
lucy_williams = User.create!(email: 'lucy.williams@locally.com', password: '123456', username: 'Lucy Williams', bio: "Art lover from New York, excited to explore the city's vibrant art scene and unique shopping experiences.")
miguel_garcia = User.create!(email: 'miguel.garcia@locally.com', password: '123456', username: 'Miguel Garcia', bio: "History enthusiast from Madrid who loves sharing stories about the city's past and its vibrant nightlife.")
anna_schneider = User.create!(email: 'anna.schneider@locally.com', password: '123456', username: 'Anna Schneider', bio: "Art and history lover from Berlin, passionate about museums and vibrant nightlife.")
david_smith = User.create!(email: 'david.smith@locally.com', password: '123456', username: 'David Smith', bio: "Nightlife aficionado from London, ready to show you the best spots for an unforgettable night.")
isabelle_dubois = User.create!(email: 'isabelle.dubois@locally.com', password: '123456', username: 'Isabelle Dubois', bio: "Museum lover from Montreal, passionate about art and history.")
peter_johnson = User.create!(email: 'peter.johnson@locally.com', password: '123456', username: 'Peter Johnson', bio: "Outdoors enthusiast from Cape Town, passionate about nature and adventure sports.")
ana_mendez = User.create!(email: 'ana.mendez@locally.com', password: '123456', username: 'Ana Mendez', bio: "Food and nightlife enthusiast from Mexico City, excited to share the best of both worlds.")
john_clark = User.create!(email: 'john.clark@locally.com', password: '123456', username: 'John Clark', bio: "History and museum enthusiast from Washington D.C., eager to share the city's rich heritage.")
hannah_murphy = User.create!(email: 'hannah.murphy@locally.com', password: '123456', username: 'Hannah Murphy', bio: "Art and nightlife lover from Dublin, ready to show you the city's vibrant art scene and exciting night spots.")
yuki_tanaka = User.create!(email: 'yuki.tanaka@locally.com', password: '123456', username: 'Yuki Tanaka', bio: "Food and history enthusiast from Kyoto, passionate about sharing Japanese culture.")
michael_brown = User.create!(email: 'michael.brown@locally.com', password: '123456', username: 'Michael Brown', bio: "Outdoors enthusiast from Sydney, ready to take you on thrilling adventures.")
camila_silva = User.create!(email: 'camila.silva@locally.com', password: '123456', username: 'Camila Silva', bio: "Nightlife and shopping enthusiast from São Paulo, eager to show you the city's vibrant scene.")
pierre_dupont = User.create!(email: 'pierre.dupont@locally.com', password: '123456', username: 'Pierre Dupont', bio: "Food and history enthusiast from Bordeaux, passionate about sharing French culture and cuisine.")
sara_nilsson = User.create!(email: 'sara.nilsson@locally.com', password: '123456', username: 'Sara Nilsson', bio: "Museum and shopping lover from Stockholm, excited to share the city's cultural and retail gems.")
raj_patel = User.create!(email: 'raj.patel@locally.com', password: '123456', username: 'Raj Patel', bio: "History and food enthusiast from Mumbai, passionate about sharing the city's rich culture.")
julia_kovacs = User.create!(email: 'julia.kovacs@locally.com', password: '123456', username: 'Julia Kovacs', bio: "Art and museum lover from Budapest, eager to share the city's cultural treasures.")
diego_fernandez = User.create!(email: 'diego.fernandez@locally.com', password: '123456', username: 'Diego Fernandez', bio: "Outdoors and nightlife enthusiast from Barcelona, ready to show you the best of both worlds.")
nina_petrova = User.create!(email: 'nina.petrova@locally.com', password: '123456', username: 'Nina Petrova', bio: "History and museum lover from Saint Petersburg, excited to share the city's rich cultural heritage.")
liam_chen = User.create!(email: 'liam.chen@locally.com', password: '123456', username: 'Liam Chen', bio: "Food and shopping enthusiast from Taipei, eager to share the city's vibrant scene.")
sophie_tremblay = User.create!(email: 'sophie.tremblay@locally.com', password: '123456', username: 'Sophie Tremblay', bio: "Museum and history enthusiast from Quebec City, passionate about sharing the city's rich past.")
omar_al_farsi = User.create!(email: 'omar.al-farsi@locally.com', password: '123456', username: 'Omar Al-Farsi', bio: "Art and shopping lover from Dubai, eager to show you the city's luxury and culture.")
emily_clarke = User.create!(email: 'emily.clarke@locally.com', password: '123456', username: 'Emily Clarke', bio: "Outdoors and food enthusiast from Auckland, passionate about nature and local cuisine.")
laura_martinez = User.create!(email: 'laura.martinez@locally.com', password: '123456', username: 'Laura Martinez', bio: "Museum and history lover from Lima, excited to share the city's rich cultural heritage.")
robert_hall = User.create!(email: 'robert.hall@locally.com', password: '123456', username: 'Robert Hall', bio: "Nightlife and food enthusiast from Chicago, eager to show you the city's vibrant scene.")
anita_khan = User.create!(email: 'anita.khan@locally.com', password: '123456', username: 'Anita Khan', bio: "History and museum lover from Istanbul, passionate about sharing the city's rich past.")
kevin_lee = User.create!(email: 'kevin.lee@locally.com', password: '123456', username: 'Kevin Lee', bio: "Shopping and food enthusiast from Hong Kong, excited to show you the city's best spots.")
elena_romanov = User.create!(email: 'elena.romanov@locally.com', password: '123456', username: 'Elena Romanov', bio: "Art and museum enthusiast from Prague, eager to share the city's cultural treasures.")
james_wright = User.create!(email: 'james.wright@locally.com', password: '123456', username: 'James Wright', bio: "Outdoors and nightlife lover from San Francisco, passionate about the city's natural beauty and vibrant scene.")
amilia_rodriguez = User.create!(email: 'amilia.rodriguez@locally.com', password: '123456', username: 'Amilia Rodriguez', bio: "Food and nightlife lover from Buenos Aires, eager to show you the city's vibrant scene.")
alexander_ivankov = User.create!(email: 'alexander.ivankov@locally.com', password: '123456', username: 'Alexander Ivankov', bio: "History and art lover from Moscow, passionate about sharing Russian culture.")
sara_almeida = User.create!(email: 'sara.almeida@locally.com', password: '123456', username: 'Sara Almeida', bio: "Art and shopping enthusiast from Lisbon, eager to show you the city's cultural and retail gems.")
michael_schmidt = User.create!(email: 'michael.schmidt@locally.com', password: '123456', username: 'Michael Schmidt', bio: "Food and nightlife enthusiast from Berlin, eager to show you the city's vibrant scene.")
sophia_leblanc = User.create!(email: 'sophia.leblanc@locally.com', password: '123456', username: 'Sophia Leblanc', bio: "History and museum enthusiast from Paris, passionate about sharing French culture.")
muhammad_ali = User.create!(email: 'muhammad.ali@locally.com', password: '123456', username: 'Muhammad Ali', bio: "Outdoor enthusiast from Lahore, passionate about exploring nature.")
anna_kuznetsova = User.create!(email: 'anna.kuznetsova@locally.com', password: '123456', username: 'Anna Kuznetsova', bio: "Art and museum lover from St. Petersburg, eager to share the city's cultural treasures.")
olivia_andersson = User.create!(email: 'olivia.andersson@locally.com', password: '123456', username: 'Olivia Andersson', bio: "Food and nightlife lover from Stockholm, eager to show you the city's vibrant scene.")
lucas_rodriguez = User.create!(email: 'lucas.rodriguez@locally.com', password: '123456', username: 'Lucas Rodriguez', bio: "History and art lover from Madrid, passionate about sharing Spanish culture.")
anna_korhonen = User.create!(email: 'anna.korhonen@locally.com', password: '123456', username: 'Anna Korhonen', bio: "Outdoor enthusiast from Helsinki, passionate about exploring nature.")
juan_gomez = User.create!(email: 'juan.gomez@locally.com', password: '123456', username: 'Juan Gomez', bio: "Food and nightlife lover from Mexico City, eager to show you the city's vibrant scene.")
lucia_fernandez = User.create!(email: 'lucia.fernandez@locally.com', password: '123456', username: 'Lucia Fernandez', bio: "Art and shopping lover from Buenos Aires, excited to share the city's cultural and retail gems.")
viktor_petrov = User.create!(email: 'viktor.petrov@locally.com', password: '123456', username: 'Viktor Petrov', bio: "History and museum lover from Saint Petersburg, passionate about sharing the city's rich cultural heritage.")
lucia_santos = User.create!(email: 'lucia.santos@locally.com', password: '123456', username: 'Lucia Santos', bio: "Food and nightlife enthusiast from Rio de Janeiro, ready to show you the city's vibrant scene.")
alexander_mueller = User.create!(email: 'alexander.mueller@locally.com', password: '123456', username: 'Alexander Mueller', bio: "Art and museum enthusiast from Vienna, eager to share the city's cultural treasures.")
maria_gonzalez = User.create!(email: 'maria.gonzalez@locally.com', password: '123456', username: 'Maria Gonzalez', bio: "History and museum enthusiast from Madrid, passionate about sharing Spanish culture.")
sophie_lefebvre = User.create!(email: 'sophie.lefebvre@locally.com', password: '123456', username: 'Sophie Lefebvre', bio: "Outdoor enthusiast from Montreal, passionate about exploring nature.")
mohammed_ali = User.create!(email: 'mohammed.ali@locally.com', password: '123456', username: 'Mohammed Ali', bio: "Art and museum enthusiast from Cairo, eager to share the city's cultural treasures.")
lara_silva = User.create!(email: 'lara.silva@locally.com', password: '123456', username: 'Lara Silva', bio: "Food and nightlife enthusiast from Lisbon, eager to show you the city's vibrant scene.")
mikhail_ivanov = User.create!(email: 'mikhail.ivanov@locally.com', password: '123456', username: 'Mikhail Ivanov', bio: "History and art lover from Saint Petersburg, passionate about sharing Russian culture.")
anna_petrova = User.create!(email: 'anna.petrova@locally.com', password: '123456', username: 'Anna Petrova', bio: "Food and nightlife enthusiast from Moscow, eager to show you the city's vibrant scene.")
diego_santos = User.create!(email: 'diego.santos@locally.com', password: '123456', username: 'Diego Santos', bio: "Outdoor enthusiast from São Paulo, ready to show you the city's natural beauty.")
carmen_lopez = User.create!(email: 'carmen.lopez@locally.com', password: '123456', username: 'Carmen Lopez', bio: "Art and shopping lover from Madrid, eager to share the city's cultural and retail gems.")
yusuf_ali = User.create!(email: 'yusuf.ali@locally.com', password: '123456', username: 'Yusuf Ali', bio: "Food and nightlife lover from Istanbul, ready to show you the city's vibrant scene.")
lucas_martinez = User.create!(email: 'lucas.martinez2@locally.com', password: '123456', username: 'lucas_martinezl', bio: "History and museum enthusiast from Mexico City, passionate about sharing the city's rich cultural heritage.")
elena_kuznetsova = User.create!(email: 'elena.kuznetsova@locally.com', password: '123456', username: 'Elena Kuznetsova', bio: "Outdoor enthusiast from Oslo, passionate about exploring nature.")
sofia_garcia = User.create!(email: 'sofia.garcia@locally.com', password: '123456', username: 'Sofia Garcia', bio: "Art and shopping lover from Barcelona, excited to share the city's cultural and retail gems.")
daniel_andersen = User.create!(email: 'daniel.andersen@locally.com', password: '123456', username: 'Daniel Andersen', bio: "History and museum enthusiast from Copenhagen, passionate about sharing Danish culture.")
ana_martinez = User.create!(email: 'ana.martinez@locally.com', password: '123456', username: 'Ana Martinez', bio: "Food and nightlife enthusiast from Madrid, eager to show you the city's vibrant scene.")
yulia_petrova = User.create!(email: 'yulia.petrova@locally.com', password: '123456', username: 'Yulia Petrova', bio: "Outdoor enthusiast from Vancouver, passionate about exploring nature.")
luca_rossi = User.create!(email: 'luca.rossi@locally.com', password: '123456', username: 'Luca Rossi', bio: "Art and museum enthusiast from Florence, eager to share the city's cultural treasures.")
isabella_conti = User.create!(email: 'isabella.conti@locally.com', password: '123456', username: 'Isabella Conti', bio: "Food and nightlife lover from Rome, eager to show you the city's vibrant scene.")
antonio_moreno = User.create!(email: 'antonio.moreno@locally.com', password: '123456', username: 'Antonio Moreno', bio: "History and museum enthusiast from Seville, passionate about sharing Spanish culture.")
marta_franco = User.create!(email: 'marta.franco@locally.com', password: '123456', username: 'Marta Franco', bio: "Outdoor enthusiast from Lisbon, passionate about exploring nature.")
mark_johnson = User.create!(email: 'mark.johnson@locally.com', password: '123456', username: 'Mark Johnson', bio: "Food and nightlife enthusiast from Toronto, ready to show you the city's vibrant scene.")
luciana_silva = User.create!(email: 'luciana.silva@locally.com', password: '123456', username: 'Luciana Silva', bio: "Art and shopping lover from São Paulo, excited to share the city's cultural and retail gems.")
giorgio_rossi = User.create!(email: 'giorgio.rossi@locally.com', password: '123456', username: 'Giorgio Rossi', bio: "History and museum enthusiast from Rome, passionate about sharing Italian culture.")
anna_kovacs = User.create!(email: 'anna.kovacs@locally.com', password: '123456', username: 'Anna Kovacs', bio: "Outdoor enthusiast from Budapest, passionate about exploring nature.")
gabriel_silva = User.create!(email: 'gabriel.silva@locally.com', password: '123456', username: 'Gabriel Silva', bio: "Food and nightlife lover from São Paulo, eager to show you the city's vibrant scene.")
emilia_rodriguez = User.create!(email: 'emilia.rodriguez@locally.com', password: '123456', username: 'Emilia Rodriguez', bio: "Art and museum enthusiast from Buenos Aires, eager to share the city's cultural treasures.")
pablo_lopez = User.create!(email: 'pablo.lopez@locally.com', password: '123456', username: 'Pablo Lopez', bio: "History and museum enthusiast from Madrid, passionate about sharing Spanish culture.")
elena_peterson = User.create!(email: 'elena.peterson@locally.com', password: '123456', username: 'Elena Peterson', bio: "Food and nightlife lover from Stockholm, eager to show you the city's vibrant scene.")
giovanni_ricci = User.create!(email: 'giovanni.ricci@locally.com', password: '123456', username: 'Giovanni Ricci', bio: "Art and museum enthusiast from Florence, eager to share the city's cultural treasures.")
maria_rodriguez = User.create!(email: 'maria.rodriguez@locally.com', password: '123456', username: 'maria_rodriguezl', bio: "Outdoor enthusiast from Rio de Janeiro, passionate about exploring nature.")
julia_schmidt = User.create!(email: 'julia.schmidt@locally.com', password: '123456', username: 'Julia Schmidt', bio: "Food and nightlife enthusiast from Berlin, ready to show you the city's vibrant scene.")
david_martinez = User.create!(email: 'david.martinez@locally.com', password: '123456', username: 'David Martinez', bio: "History and museum enthusiast from Mexico City, passionate about sharing the city's rich cultural heritage.")
joseph_wong = User.create!(email: 'joseph.wong@locally.com', password: '123456', username: 'Joseph Wong', bio: "Outdoor enthusiast from Hong Kong, passionate about exploring nature.")
anastasia_kuznetsova = User.create!(email: 'anastasia.kuznetsova@locally.com', password: '123456', username: 'Anastasia Kuznetsova', bio: "Art and shopping lover from Moscow, excited to share the city's cultural and retail gems.")
nicolas_leroy = User.create!(email: 'nicolas.leroy@locally.com', password: '123456', username: 'Nicolas Leroy', bio: "Food and nightlife enthusiast from Paris, ready to show you the city's vibrant scene.")
olga_ivanova = User.create!(email: 'olga.ivanova@locally.com', password: '123456', username: 'Olga Ivanova', bio: "History and museum enthusiast from St. Petersburg, passionate about sharing Russian culture.")
fabio_conti = User.create!(email: 'fabio.conti@locally.com', password: '123456', username: 'Fabio Conti', bio: "Outdoor enthusiast from Rome, passionate about exploring nature.")
carla_garcia = User.create!(email: 'carla.garcia@locally.com', password: '123456', username: 'Carla Garcia', bio: "Art and museum enthusiast from Barcelona, eager to share the city's cultural treasures.")
daniel_nguyen = User.create!(email: 'daniel.nguyen@locally.com', password: '123456', username: 'Daniel Nguyen', bio: "Food and nightlife lover from Ho Chi Minh City, eager to show you the city's vibrant scene.")
lucia_martinez = User.create!(email: 'lucia.martinez@locally.com', password: '123456', username: 'Lucia Martinez', bio: "History and museum enthusiast from Mexico City, passionate about sharing the city's rich cultural heritage.")
jakub_nowak = User.create!(email: 'jakub.nowak@locally.com', password: '123456', username: 'Jakub Nowak', bio: "Outdoor enthusiast from Kraków, passionate about exploring nature.")
anna_smith = User.create!(email: 'anna.smith@locally.com', password: '123456', username: 'Anna Smith', bio: "Food and nightlife enthusiast from New York City, ready to show you the city's vibrant scene.")
marco_rodriguez = User.create!(email: 'marco.rodriguez@locally.com', password: '123456', username: 'Marco Rodriguez', bio: "Art and museum enthusiast from Madrid, eager to share the city's cultural treasures.")
sophie_dubois = User.create!(email: 'sophie.dubois@locally.com', password: '123456', username: 'Sophie Dubois', bio: "History and museum enthusiast from Paris, passionate about sharing French culture.")
maximilian_mueller = User.create!(email: 'maximilian.mueller@locally.com', password: '123456', username: 'Maximilian Mueller', bio: "Food and nightlife enthusiast from Berlin, ready to show you the city's vibrant scene.")
olivia_anderson = User.create!(email: 'olivia.anderson@locally.com', password: '123456', username: 'Olivia Anderson', bio: "Outdoor enthusiast from Sydney, passionate about exploring nature.")
felipe_gomez = User.create!(email: 'felipe.gomez@locally.com', password: '123456', username: 'Felipe Gomez', bio: "Art and museum enthusiast from Mexico City, eager to share the city's cultural treasures.")
sara_müller = User.create!(email: 'sara.müller@locally.com', password: '123456', username: 'Sara Müller', bio: "Food and nightlife lover from Berlin, excited to show you the city's vibrant scene.")
leo_rodriguez = User.create!(email: 'leo.rodriguez@locally.com', password: '123456', username: 'Leo Rodriguez', bio: "History and museum enthusiast from Madrid, passionate about sharing Spanish culture.")
emily_wang = User.create!(email: 'emily.wang@locally.com', password: '123456', username: 'Emily Wang', bio: "Outdoor enthusiast from Vancouver, passionate about exploring nature.")
mikhail_smirnov = User.create!(email: 'mikhail.smirnov@locally.com', password: '123456', username: 'Mikhail Smirnov', bio: "Food and nightlife lover from Moscow, ready to show you the city's vibrant scene.")
anna_schnëider = User.create!(email: 'anna.schnëider@locally.com', password: '123456', username: 'Anna Schnëider', bio: "Art and museum enthusiast from Vienna, eager to share the city's cultural treasures.")
maria_rodrigueze = User.create!(email: 'maria.rodrigueze@locally.com', password: '123456', username: 'Maria Rodriguezle', bio: "Outdoor enthusiast from Buenos Aires, passionate about exploring nature.")
thomas_müller = User.create!(email: 'thomas.müller@locally.com', password: '123456', username: 'Thomas Müller', bio: "History and museum enthusiast from Berlin, eager to share the city's cultural treasures.")
sofia_fernandez = User.create!(email: 'sofia.fernandez@locally.com', password: '123456', username: 'Sofia Fernandez', bio: "Food and nightlife lover from Buenos Aires, ready to show you the city's vibrant scene.")
andreas_schmidt = User.create!(email: 'andreas.schmidt@locally.com', password: '123456', username: 'Andreas Schmidt', bio: "Outdoor enthusiast from Munich, passionate about exploring nature.")
laura_rodriguez = User.create!(email: 'laura.rodriguez@locally.com', password: '123456', username: 'Laura Rodriguez', bio: "Art and museum enthusiast from Barcelona, passionate about sharing Catalan culture.")
alexander_schneider = User.create!(email: 'alexander.schneider@locally.com', password: '123456', username: 'Alexander Schneider', bio: "Food and nightlife lover from Vienna, eager to show you the city's vibrant scene.")
juliana_silva = User.create!(email: 'juliana.silva@locally.com', password: '123456', username: 'Juliana Silva', bio: "History and museum enthusiast from São Paulo, passionate about sharing Brazilian culture.")
matteo_bianchi = User.create!(email: 'matteo.bianchi@locally.com', password: '123456', username: 'Matteo Bianchi', bio: "Outdoor enthusiast from Florence, passionate about exploring nature.")
elena_popova = User.create!(email: 'elena.popova@locally.com', password: '123456', username: 'Elena Popova', bio: "Art and museum enthusiast from Moscow, eager to share the city's cultural treasures.")

puts "Loading profile pics..."

avatar_guillaume = URI.open("https://avatars.githubusercontent.com/u/166691058?v=4")
avatar_luk = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1713302532/jxs9twp0kbtmkk73nwbt.jpg")
avatar_mathieu = URI.open("https://media.licdn.com/dms/image/C4E03AQHo2YkZrhIaJA/profile-displayphoto-shrink_400_400/0/1517020425940?e=1723680000&v=beta&t=OpiA8kepa2tQ2Eqsatm8muKwgNqVVJhRpBrWFmkON1g")
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
emma_kiml = Localler.create!(description: "Welcome to Seoul! Join me in experiencing the rich culinary heritage of Korea and enjoying its vibrant nightlife. From street food to high-end restaurants and lively nightspots, I will guide you through a memorable journey.", availability: true, location: "123 Itaewon-ro, Seoul, South Korea", user: emma_kim)
li_meil = Localler.create!(description: "Beijing is a city where the past meets the present. Let me take you through the historic sites, including the Forbidden City and the Great Wall, and explore unique art galleries that reveal the stories that shaped our culture.", availability: true, location: "456 Chang'an Avenue, Beijing, China", user: li_mei)
hiroshi_satol = Localler.create!(description: "Tokyo is a hub for contemporary and traditional art. Join me to explore hidden art galleries, vibrant street art, and bustling shopping districts for a truly unique experience.", availability: true, location: "789 Ginza, Tokyo, Japan", user: hiroshi_sato)
maria_oliveiral = Localler.create!(description: "Experience the excitement of Rio's nightlife and beautiful outdoors! From samba clubs to beach parties and scenic hikes, I'll guide you through the best spots to enjoy music, dance, and nature.", availability: true, location: "123 Copacabana, Rio de Janeiro, Brazil", user: maria_oliveira)
elena_smirnoval = Localler.create!(description: "Explore Moscow's rich cultural heritage with me. We'll visit the top museums, including the State Historical Museum and the Tretyakov Gallery, and dive deep into Russian art and history.", availability: true, location: "456 Arbat Street, Moscow, Russia", user: elena_smirnova)
sophie_martinl = Localler.create!(description: "Paris is a shopper's paradise and a hub for art lovers. Join me to explore high-end fashion stores, charming boutiques, hidden markets, and unique art galleries where you can find unique items and great deals.", availability: true, location: "123 Champs-Élysées, Paris, France", user: sophie_martin)
giulia_rossil = Localler.create!(description: "Join me in Rome to savor the best Italian food and wine and explore the city's rich history. From local trattorias to famous restaurants and historic sites, I'll ensure you have a delicious and memorable experience.", availability: true, location: "456 Via del Corso, Rome, Italy", user: giulia_rossi)
jack_wilsonl = Localler.create!(description: "Vancouver is a paradise for nature lovers. Join me for an adventure through its stunning parks, mountains, and coastline, offering the best outdoor activities and breathtaking views.", availability: true, location: "789 Granville Street, Vancouver, Canada", user: jack_wilson)
lucy_williamsl = Localler.create!(description: "New York is a mecca for art enthusiasts and shoppers. Let me show you the best art galleries, street art, museums, and unique shopping spots, including the iconic MoMA and MET.", availability: true, location: "123 Broadway, New York, USA", user: lucy_williams)
miguel_garcial = Localler.create!(description: "Madrid is rich in history and culture. Let me take you on a journey through its historic sites like the Royal Palace and the Prado Museum, and show you the vibrant nightlife for an unforgettable experience.", availability: true, location: "456 Gran Via, Madrid, Spain", user: miguel_garcia)
anna_schneiderl = Localler.create!(description: "Berlin is a treasure trove of art and history with a vibrant nightlife. Join me to explore its renowned museums and galleries, including the Pergamon Museum and the East Side Gallery, and enjoy the city's vibrant night scene.", availability: true, location: "789 Unter den Linden, Berlin, Germany", user: anna_schneider)
david_smithl = Localler.create!(description: "London's nightlife is second to none. Let me guide you through the best pubs, clubs, and music venues for a moment to remember. Discovering the locals party place is my pleasure.", availability: true, location: "123 Piccadilly, London, UK", user: david_smith)
isabelle_duboisl = Localler.create!(description: "Montreal is a city rich in art and history. Join me to explore its top museums, including the Montreal Museum of Fine Arts and the Pointe-à-Callière Museum, and dive into the city's vibrant cultural scene.", availability: true, location: "456 Saint Catherine Street, Montreal, Canada", user: isabelle_dubois)
peter_johnsonl = Localler.create!(description: "Cape Town offers breathtaking natural beauty and adventure sports. Join me to explore Table Mountain, go hiking, surfing, and more for an unforgettable outdoor experience.", availability: true, location: "789 Long Street, Cape Town, South Africa", user: peter_johnson)
ana_mendezl = Localler.create!(description: "Mexico City is a paradise for foodies and night owls. Let me guide you through its vibrant street food scene, top restaurants, and lively nightspots for an unforgettable experience.", availability: true, location: "123 Reforma Avenue, Mexico City, Mexico", user: ana_mendez)
john_clarkl = Localler.create!(description: "Washington D.C. is a city steeped in history and culture. Join me to explore the Smithsonian museums, monuments, and historic sites that tell the story of America's past.", availability: true, location: "456 Independence Avenue, Washington D.C., USA", user: john_clark)
hannah_murphyl = Localler.create!(description: "Dublin is alive with art and nightlife. Let's explore its vibrant galleries, street art, and lively pubs and clubs for an unforgettable experience.", availability: true, location: "123 Temple Bar, Dublin, Ireland", user: hannah_murphy)
yuki_tanakal = Localler.create!(description: "Kyoto is the heart of traditional Japan. Join me to savor the best of Japanese cuisine and explore historic temples and gardens that showcase our rich cultural heritage.", availability: true, location: "456 Shijo-dori, Kyoto, Japan", user: yuki_tanaka)
michael_brownl = Localler.create!(description: "Sydney offers stunning natural landscapes and thrilling outdoor activities. Let's explore the beaches, national parks, and enjoy activities like surfing, hiking, and more.", availability: true, location: "789 Bondi Beach, Sydney, Australia", user: michael_brown)
camila_silval = Localler.create!(description: "São Paulo is known for its vibrant nightlife and shopping. Join me to explore the best clubs, bars, and shopping districts for an exciting experience.", availability: true, location: "123 Avenida Paulista, São Paulo, Brazil", user: camila_silva)
pierre_dupontl = Localler.create!(description: "Bordeaux is famous for its wine, food, and history. Let me guide you through the best wine tasting experiences, gourmet restaurants, and historic sites in this beautiful city.", availability: true, location: "456 Rue Sainte-Catherine, Bordeaux, France", user: pierre_dupont)
sara_nilssonl = Localler.create!(description: "Stockholm offers a mix of culture and modernity. Join me to explore top museums, like the Vasa Museum, and discover the best shopping spots in this beautiful city.", availability: true, location: "789 Drottninggatan, Stockholm, Sweden", user: sara_nilsson)
raj_patell = Localler.create!(description: "Mumbai is a melting pot of cultures and cuisines. Join me to explore its historic sites, vibrant street food, and hidden gems that make this city unique.", availability: true, location: "123 Marine Drive, Mumbai, India", user: raj_patel)
julia_kovacsl = Localler.create!(description: "Budapest is a city rich in art and history. Let's explore its top museums, including the Hungarian National Gallery, and discover unique art galleries and historic sites.", availability: true, location: "456 Andrássy Avenue, Budapest, Hungary", user: julia_kovacs)
diego_fernandezl = Localler.create!(description: "Barcelona is perfect for outdoor adventures and vibrant nightlife. Join me to explore beautiful beaches, parks, and enjoy the best clubs and bars in the city.", availability: true, location: "789 La Rambla, Barcelona, Spain", user: diego_fernandez)
nina_petroval = Localler.create!(description: "Saint Petersburg is a treasure trove of history and culture. Join me to explore its magnificent museums, including the Hermitage, and historic sites that tell the story of this grand city.", availability: true, location: "123 Nevsky Prospect, Saint Petersburg, Russia", user: nina_petrova)
liam_chenl = Localler.create!(description: "Taipei is a food lover's paradise and a shopper's dream. Join me to explore the best night markets, gourmet restaurants, and bustling shopping districts.", availability: true, location: "456 Zhongxiao East Road, Taipei, Taiwan", user: liam_chen)
sophie_tremblayl = Localler.create!(description: "Quebec City is full of history and charm. Join me to explore its historic sites, such as the Old City and Citadelle, and visit the best museums to learn about our rich cultural heritage.", availability: true, location: "789 Rue Saint-Jean, Quebec City, Canada", user: sophie_tremblay)
omar_al_farsil = Localler.create!(description: "Dubai is a city of luxury and culture. Let me guide you through its top art galleries, iconic shopping malls, and unique cultural experiences for a truly memorable visit.", availability: true, location: "123 Sheikh Zayed Road, Dubai, UAE", user: omar_al_farsi)
emily_clarkel = Localler.create!(description: "Auckland is a paradise for nature lovers and foodies. Join me to explore stunning parks, beautiful beaches, and enjoy delicious local cuisine for an unforgettable experience.", availability: true, location: "456 Queen Street, Auckland, New Zealand", user: emily_clarke)
laura_martinezl = Localler.create!(description: "Lima is a city rich in history and culture. Let's explore its top museums, including the Larco Museum, and historic sites that reveal the story of this vibrant city.", availability: true, location: "789 Miraflores, Lima, Peru", user: laura_martinez)
robert_halll = Localler.create!(description: "Chicago offers a vibrant nightlife and amazing food. Join me to explore the best bars, clubs, and restaurants for an unforgettable experience in the Windy City.", availability: true, location: "123 Michigan Avenue, Chicago, USA", user: robert_hall)
anita_khanl = Localler.create!(description: "Istanbul is a city where East meets West. Join me to explore its historic sites, such as the Hagia Sophia and Topkapi Palace, and visit top museums to learn about our rich cultural heritage.", availability: true, location: "456 Sultanahmet, Istanbul, Turkey", user: anita_khan)
kevin_leel = Localler.create!(description: "Hong Kong is a shopper's paradise and a food lover's dream. Join me to explore the best shopping districts and savor delicious local cuisine for a memorable experience.", availability: true, location: "123 Nathan Road, Hong Kong, China", user: kevin_lee)
elena_romanovl = Localler.create!(description: "Prague is a city rich in art and history. Let's explore its top museums, like the National Gallery, and discover unique art galleries and historic sites that tell the story of this beautiful city.", availability: true, location: "456 Charles Bridge, Prague, Czech Republic", user: elena_romanov)
james_wrightl = Localler.create!(description: "San Francisco offers stunning natural beauty and vibrant nightlife. Join me to explore its parks, scenic views, and enjoy the best clubs and bars for an unforgettable experience.", availability: true, location: "789 Market Street, San Francisco, USA", user: james_wright)
amilia_rodriguezl = Localler.create!(description: "Buenos Aires is famous for its delicious food and vibrant nightlife. Let me guide you through the best restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "123 Palermo, Buenos Aires, Argentina", user: amilia_rodriguez)
alexander_ivankovl = Localler.create!(description: "Moscow is a city steeped in history and art. Join me to explore its iconic landmarks, such as the Kremlin and Red Square, and discover the rich cultural heritage of Russia.", availability: true, location: "456 Tverskaya Street, Moscow, Russia", user: alexander_ivankov)
sara_almeidal = Localler.create!(description: "Lisbon is a city full of charm and culture. Let me guide you through its historic neighborhoods, vibrant art scene, and unique shopping districts for an unforgettable experience.", availability: true, location: "123 Baixa, Lisbon, Portugal", user: sara_almeida)
michael_schmidtl = Localler.create!(description: "Berlin is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "456 Friedrichstraße, Berlin, Germany", user: michael_schmidt)
sophia_leblancl = Localler.create!(description: "Paris is a city rich in history and art. Let me guide you through its iconic landmarks, such as the Louvre and Notre-Dame, and discover the rich cultural heritage of France.", availability: true, location: "123 Rue de Rivoli, Paris, France", user: sophia_leblanc)
muhammad_alil = Localler.create!(description: "Lahore offers breathtaking natural beauty and outdoor adventures. Join me to explore its parks, gardens, and scenic spots for an unforgettable experience.", availability: true, location: "789 Mall Road, Lahore, Pakistan", user: muhammad_ali)
anna_kuznetsoval = Localler.create!(description: "St. Petersburg is a city rich in art and history. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "456 Nevsky Prospect, St. Petersburg, Russia", user: anna_kuznetsova)
olivia_anderssonl = Localler.create!(description: "Stockholm is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "123 Södermalm, Stockholm, Sweden", user: olivia_andersson)
lucas_rodriguezl = Localler.create!(description: "Madrid is a city rich in history and art. Let me guide you through its historic neighborhoods, world-class museums, and vibrant cultural scene.", availability: true, location: "456 Gran Vía, Madrid, Spain", user: lucas_rodriguez)
anna_korhonenl = Localler.create!(description: "Helsinki offers stunning natural landscapes and outdoor activities. Join me to explore its parks, forests, and scenic waterfront for an unforgettable experience.", availability: true, location: "789 Esplanadi, Helsinki, Finland", user: anna_korhonen)
juan_gomezl = Localler.create!(description: "Mexico City is a paradise for foodies and night owls. Let me guide you through its vibrant street food scene, top restaurants, and lively nightspots for an unforgettable experience.", availability: true, location: "123 Reforma Avenue, Mexico City, Mexico", user: juan_gomez)
lucia_fernandezl = Localler.create!(description: "Buenos Aires is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "456 Recoleta, Buenos Aires, Argentina", user: lucia_fernandez)
viktor_petrovl = Localler.create!(description: "Saint Petersburg is a treasure trove of history and culture. Join me to explore its magnificent museums, including the Hermitage, and historic sites that tell the story of this grand city.", availability: true, location: "789 Nevsky Prospect, Saint Petersburg, Russia", user: viktor_petrov)
lucia_santosl = Localler.create!(description: "Rio de Janeiro is a city of samba, sun, and delicious cuisine. Let me guide you through its best restaurants, bars, and street food stalls for an unforgettable culinary journey.", availability: true, location: "123 Copacabana Beach, Rio de Janeiro, Brazil", user: lucia_santos)
alexander_muellerl = Localler.create!(description: "Vienna is a city rich in art and history. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "456 Ringstraße, Vienna, Austria", user: alexander_mueller)
maria_gonzalezl = Localler.create!(description: "Madrid is a city rich in history and art. Let me guide you through its historic neighborhoods, world-class museums, and vibrant cultural scene.", availability: true, location: "789 Gran Vía, Madrid, Spain", user: maria_gonzalez)
sophie_lefebvrel = Localler.create!(description: "Montreal offers stunning outdoor experiences, from hiking in Mount Royal Park to kayaking in the Lachine Canal. Join me for an adventure in the heart of nature.", availability: true, location: "123 Mount Royal Avenue, Montreal, Canada", user: sophie_lefebvre)
mohammed_alil = Localler.create!(description: "Cairo is a city steeped in history and culture. Let me guide you through its ancient landmarks, such as the Pyramids of Giza and the Egyptian Museum, and discover the rich heritage of Egypt.", availability: true, location: "123 Tahrir Square, Cairo, Egypt", user: mohammed_ali)
lara_silval = Localler.create!(description: "Lisbon is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "789 Bairro Alto, Lisbon, Portugal", user: lara_silva)
mikhail_ivanovl = Localler.create!(description: "St. Petersburg is a city rich in history and art. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "123 Nevsky Prospect, Saint Petersburg, Russia", user: mikhail_ivanov)
anna_petroval = Localler.create!(description: "Moscow is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "456 Arbat Street, Moscow, Russia", user: anna_petrova)
diego_santosl = Localler.create!(description: "São Paulo offers breathtaking natural beauty and outdoor activities. Join me to explore its parks, gardens, and scenic spots for an unforgettable outdoor adventure.", availability: true, location: "123 Ibirapuera Park, São Paulo, Brazil", user: diego_santos)
carmen_lopezl = Localler.create!(description: "Madrid is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "789 Gran Vía, Madrid, Spain", user: carmen_lopez)
yusuf_alil = Localler.create!(description: "Istanbul is a city of flavors and rhythms. Let me guide you through its diverse culinary offerings and lively nightlife spots for an unforgettable experience.", availability: true, location: "123 Istiklal Avenue, Istanbul, Turkey", user: yusuf_ali)
lucas_martinezl = Localler.create!(description: "Mexico City is a treasure trove of history and culture. Join me to explore its magnificent museums, archaeological sites, and historic neighborhoods that tell the story of Mexico.", availability: true, location: "456 Zocalo, Mexico City, Mexico", user: lucas_martinez)
elena_kuznetsoval = Localler.create!(description: "Oslo offers stunning outdoor experiences, from hiking in Nordmarka forest to sailing in Oslofjord. Join me for an adventure in the heart of nature.", availability: true, location: "123 Karl Johans Gate, Oslo, Norway", user: elena_kuznetsova)
sofia_garcial = Localler.create!(description: "Barcelona is a city of art and culture. Let me guide you through its vibrant art scene, from iconic landmarks like the Sagrada Familia to hidden art galleries in the Gothic Quarter.", availability: true, location: "789 Passeig de Gràcia, Barcelona, Spain", user: sofia_garcia)
daniel_andersenl = Localler.create!(description: "Copenhagen is a city rich in history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "123 Strøget, Copenhagen, Denmark", user: daniel_andersen)
ana_martinezl = Localler.create!(description: "Madrid is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "456 Puerta del Sol, Madrid, Spain", user: ana_martinez)
yulia_petroval = Localler.create!(description: "Vancouver offers breathtaking outdoor experiences, from hiking in the North Shore mountains to kayaking in False Creek. Join me for an adventure in the heart of nature.", availability: true, location: "123 Stanley Park Drive, Vancouver, Canada", user: yulia_petrova)
luca_rossil = Localler.create!(description: "Florence is a city rich in art and history. Let me guide you through its world-renowned museums, stunning architecture, and timeless masterpieces.", availability: true, location: "456 Piazza della Signoria, Florence, Italy", user: luca_rossi)
isabella_contil = Localler.create!(description: "Rome is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and trattorias for an unforgettable experience.", availability: true, location: "123 Via del Corso, Rome, Italy", user: isabella_conti)
antonio_morenol = Localler.create!(description: "Seville is a city steeped in history and culture. Let me guide you through its majestic palaces, ancient monuments, and world-class museums.", availability: true, location: "123 Plaza de España, Seville, Spain", user: antonio_moreno)
marta_francol = Localler.create!(description: "Lisbon offers stunning outdoor experiences, from hiking in Sintra-Cascais Natural Park to surfing in Costa da Caparica. Join me for an adventure in the heart of nature.", availability: true, location: "123 Parque das Nações, Lisbon, Portugal", user: marta_franco)
mark_johnsonl = Localler.create!(description: "Toronto is a melting pot of cuisines and cultures, with a vibrant food scene and lively nightlife. Let me guide you through its diverse neighborhoods and culinary hotspots.", availability: true, location: "456 Queen Street West, Toronto, Canada", user: mark_johnson)
luciana_silval = Localler.create!(description: "São Paulo is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "789 Avenida Paulista, São Paulo, Brazil", user: luciana_silva)
giorgio_rossil = Localler.create!(description: "Rome is a city rich in history and art. Let me guide you through its historic landmarks, world-class museums, and iconic monuments that tell the story of Italy.", availability: true, location: "123 Via dei Fori Imperiali, Rome, Italy", user: giorgio_rossi)
anna_kovacsl = Localler.create!(description: "Budapest offers stunning outdoor experiences, from hiking in the Buda Hills to cruising on the Danube River. Join me for an adventure in the heart of nature.", availability: true, location: "123 Andrassy Avenue, Budapest, Hungary", user: anna_kovacs)
gabriel_silval = Localler.create!(description: "São Paulo is a paradise for foodies and partygoers. Let me guide you through its diverse culinary scene and vibrant nightlife for an unforgettable experience.", availability: true, location: "456 Rua Augusta, São Paulo, Brazil", user: gabriel_silva)
emilia_rodriguezl = Localler.create!(description: "Buenos Aires is a city rich in art and history. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "123 Avenida de Mayo, Buenos Aires, Argentina", user: emilia_rodriguez)
pablo_lopezl = Localler.create!(description: "Madrid is a treasure trove of history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "456 Calle Mayor, Madrid, Spain", user: pablo_lopez)
elena_petersonl = Localler.create!(description: "Stockholm is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "123 Drottninggatan, Stockholm, Sweden", user: elena_peterson)
giovanni_riccil = Localler.create!(description: "Florence is a city steeped in art and culture. Let me guide you through its world-renowned museums, stunning architecture, and timeless masterpieces.", availability: true, location: "456 Ponte Vecchio, Florence, Italy", user: giovanni_ricci)
maria_rodriguezl = Localler.create!(description: "Rio de Janeiro offers breathtaking outdoor experiences, from hiking in Tijuca National Park to surfing in Copacabana. Join me for an adventure in the heart of nature.", availability: true, location: "123 Copacabana Beach, Rio de Janeiro, Brazil", user: maria_rodriguez)
julia_schmidtl = Localler.create!(description: "Berlin is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "456 Kurfürstendamm, Berlin, Germany", user: julia_schmidt)
david_martinezl = Localler.create!(description: "Mexico City is a treasure trove of history and culture. Join me to explore its magnificent museums, archaeological sites, and historic neighborhoods that tell the story of Mexico.", availability: true, location: "123 Zocalo, Mexico City, Mexico", user: david_martinez)
joseph_wongl = Localler.create!(description: "Hong Kong offers stunning outdoor experiences, from hiking in the New Territories to kayaking in Sai Kung. Join me for an adventure in the heart of nature.", availability: true, location: "123 Victoria Peak, Hong Kong", user: joseph_wong)
anastasia_kuznetsoval = Localler.create!(description: "Moscow is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "789 Arbat Street, Moscow, Russia", user: anastasia_kuznetsova)
nicolas_leroyl = Localler.create!(description: "Paris is a city of gastronomic delights and vibrant nightlife. Let me guide you through its diverse culinary offerings and lively bars and clubs for an unforgettable experience.", availability: true, location: "123 Champs-Élysées, Paris, France", user: nicolas_leroy)
olga_ivanoval = Localler.create!(description: "St. Petersburg is a city rich in history and culture. Let me guide you through its magnificent museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "456 Nevsky Prospect, St. Petersburg, Russia", user: olga_ivanova)
fabio_contil = Localler.create!(description: "Rome offers stunning outdoor experiences, from exploring ancient ruins to hiking in the nearby hills. Join me for an adventure in the heart of nature.", availability: true, location: "123 Piazza di Spagna, Rome, Italy", user: fabio_conti)
carla_garcial = Localler.create!(description: "Barcelona is a city rich in art and culture. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "789 Gothic Quarter, Barcelona, Spain", user: carla_garcia)
daniel_nguyenl = Localler.create!(description: "Ho Chi Minh City is a paradise for foodies and night owls. Let me guide you through its vibrant street food scene, top restaurants, and lively nightspots for an unforgettable experience.", availability: true, location: "123 Dong Khoi Street, Ho Chi Minh City, Vietnam", user: daniel_nguyen)
lucia_martinezl = Localler.create!(description: "Mexico City is a treasure trove of history and culture. Join me to explore its magnificent museums, archaeological sites, and historic neighborhoods that tell the story of Mexico.", availability: true, location: "456 Reforma Avenue, Mexico City, Mexico", user: lucia_martinez)
jakub_nowakl = Localler.create!(description: "Kraków offers stunning outdoor experiences, from hiking in the Tatra Mountains to exploring the Wieliczka Salt Mine. Join me for an adventure in the heart of nature.", availability: true, location: "123 Main Market Square, Kraków, Poland", user: jakub_nowak)
anna_smithl = Localler.create!(description: "New York City is a melting pot of cuisines and cultures, with a vibrant food scene and lively nightlife. Let me guide you through its diverse neighborhoods and culinary hotspots.", availability: true, location: "456 Times Square, New York City, USA", user: anna_smith)
marco_rodriguezl = Localler.create!(description: "Madrid is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "789 Prado Museum, Madrid, Spain", user: marco_rodriguez)
sophie_duboisl = Localler.create!(description: "Paris is a city rich in history and culture. Let me guide you through its magnificent museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "123 Montmartre, Paris, France", user: sophie_dubois)
maximilian_muellerl = Localler.create!(description: "Berlin is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "456 Friedrichstraße, Berlin, Germany", user: maximilian_mueller)
olivia_andersonl = Localler.create!(description: "Sydney offers stunning outdoor experiences, from coastal walks to bushland trails. Join me for an adventure in the heart of nature.", availability: true, location: "123 Bondi Beach, Sydney, Australia", user: olivia_anderson)
felipe_gomezl = Localler.create!(description: "Mexico City is a treasure trove of art and culture. Let me guide you through its vibrant art scene, from contemporary galleries to historic murals.", availability: true, location: "123 Bellas Artes, Mexico City, Mexico", user: felipe_gomez)
sara_müllerl = Localler.create!(description: "Berlin is a melting pot of cuisines and cultures. Let me guide you through its diverse food scene, from traditional German dishes to international delights.", availability: true, location: "789 Alexanderplatz, Berlin, Germany", user: sara_müller)
leo_rodriguezl = Localler.create!(description: "Madrid is a city steeped in history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "123 Plaza Mayor, Madrid, Spain", user: leo_rodriguez)
emily_wangl = Localler.create!(description: "Vancouver offers breathtaking outdoor experiences, from hiking in the mountains to kayaking in the ocean. Join me for an adventure in the heart of nature.", availability: true, location: "456 Granville Island, Vancouver, Canada", user: emily_wang)
mikhail_smirnovl = Localler.create!(description: "Moscow is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "123 Red Square, Moscow, Russia", user: mikhail_smirnov)
anna_schnëiderl = Localler.create!(description: "Vienna is a city rich in art and culture. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "789 Ringstrasse, Vienna, Austria", user: anna_schnëider)
maria_rodriguezel = Localler.create!(description: "Buenos Aires offers stunning outdoor experiences, from exploring ecological reserves to horseback riding in the countryside. Join me for an adventure in the heart of nature.", availability: true, location: "123 Palermo, Buenos Aires, Argentina", user: maria_rodrigueze)
thomas_müllerl = Localler.create!(description: "Berlin is a city rich in history and culture. Let me guide you through its fascinating museums, historic landmarks, and vibrant arts scene.", availability: true, location: "123 Checkpoint Charlie, Berlin, Germany", user: thomas_müller)
sofia_fernandezl = Localler.create!(description: "Buenos Aires is a paradise for foodies and partygoers. Let me guide you through its diverse culinary scene and vibrant nightlife for an unforgettable experience.", availability: true, location: "456 Palermo Soho, Buenos Aires, Argentina", user: sofia_fernandez)
andreas_schmidtl = Localler.create!(description: "Munich offers stunning outdoor experiences, from hiking in the Alps to cycling along the Isar River. Join me for an adventure in the heart of Bavaria.", availability: true, location: "123 Englischer Garten, Munich, Germany", user: andreas_schmidt)
laura_rodriguezl = Localler.create!(description: "Barcelona is a city rich in art and culture. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "123 Park Güell, Barcelona, Spain", user: laura_rodriguez)
alexander_schneiderl = Localler.create!(description: "Vienna is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and cafés for an unforgettable dining experience.", availability: true, location: "456 Naschmarkt, Vienna, Austria", user: alexander_schneider)
juliana_silval = Localler.create!(description: "São Paulo is a city rich in history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "123 Liberdade, São Paulo, Brazil", user: juliana_silva)
matteo_bianchil = Localler.create!(description: "Florence offers breathtaking outdoor experiences, from hiking in the hills to cycling along the Arno River. Join me for an adventure in the heart of Tuscany.", availability: true, location: "123 Piazzale Michelangelo, Florence, Italy", user: matteo_bianchi)
elena_popoval = Localler.create!(description: "Moscow is a hub of art and culture. Let me guide you through its vibrant art scene, from contemporary galleries to historic museums, and explore the best shopping districts for unique finds.", availability: true, location: "789 Tretyakov Gallery, Moscow, Russia", user: elena_popova)


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
  { localler: carolinel, activity: food },
  { localler: emma_kiml, activity: food },
  { localler: emma_kiml, activity: nightlife },
  { localler: emma_kiml, activity: shopping },
  { localler: li_meil, activity: history },
  { localler: li_meil, activity: art },
  { localler: li_meil, activity: museum },
  { localler: hiroshi_satol, activity: art },
  { localler: hiroshi_satol, activity: shopping },
  { localler: hiroshi_satol, activity: food },
  { localler: maria_oliveiral, activity: nightlife },
  { localler: maria_oliveiral, activity: outdoors },
  { localler: maria_oliveiral, activity: food },
  { localler: maria_oliveiral, activity: shopping },
  { localler: elena_smirnoval, activity: museum },
  { localler: elena_smirnoval, activity: history },
  { localler: elena_smirnoval, activity: art },
  { localler: elena_smirnoval, activity: shopping },
  { localler: sophie_martinl, activity: shopping },
  { localler: sophie_martinl, activity: art },
  { localler: sophie_martinl, activity: food },
  { localler: sophie_martinl, activity: museum },
  { localler: giulia_rossil, activity: food },
  { localler: giulia_rossil, activity: history },
  { localler: giulia_rossil, activity: art },
  { localler: jack_wilsonl, activity: outdoors },
  { localler: jack_wilsonl, activity: unique },
  { localler: jack_wilsonl, activity: nightlife },
  { localler: jack_wilsonl, activity: food },
  { localler: lucy_williamsl, activity: art },
  { localler: lucy_williamsl, activity: shopping },
  { localler: lucy_williamsl, activity: nightlife },
  { localler: lucy_williamsl, activity: museum },
  { localler: miguel_garcial, activity: history },
  { localler: miguel_garcial, activity: nightlife },
  { localler: miguel_garcial, activity: food },
  { localler: anna_schneiderl, activity: museum },
  { localler: anna_schneiderl, activity: art },
  { localler: anna_schneiderl, activity: nightlife },
  { localler: anna_schneiderl, activity: shopping },
  { localler: david_smithl, activity: nightlife },
  { localler: david_smithl, activity: food },
  { localler: david_smithl, activity: shopping },
  { localler: isabelle_duboisl, activity: museum },
  { localler: isabelle_duboisl, activity: art },
  { localler: isabelle_duboisl, activity: history },
  { localler: peter_johnsonl, activity: outdoors },
  { localler: peter_johnsonl, activity: unique },
  { localler: peter_johnsonl, activity: food },
  { localler: peter_johnsonl, activity: history },
  { localler: ana_mendezl, activity: food },
  { localler: ana_mendezl, activity: nightlife },
  { localler: ana_mendezl, activity: history },
  { localler: john_clarkl, activity: museum },
  { localler: john_clarkl, activity: history },
  { localler: john_clarkl, activity: unique },
  { localler: hannah_murphyl, activity: art },
  { localler: hannah_murphyl, activity: nightlife },
  { localler: hannah_murphyl, activity: museum },
  { localler: yuki_tanakal, activity: food },
  { localler: yuki_tanakal, activity: history },
  { localler: yuki_tanakal, activity: art },
  { localler: michael_brownl, activity: outdoors },
  { localler: michael_brownl, activity: unique },
  { localler: michael_brownl, activity: nightlife },
  { localler: camila_silval, activity: nightlife },
  { localler: camila_silval, activity: shopping },
  { localler: camila_silval, activity: food },
  { localler: pierre_dupontl, activity: food },
  { localler: pierre_dupontl, activity: history },
  { localler: pierre_dupontl, activity: unique },
  { localler: sara_nilssonl, activity: museum },
  { localler: sara_nilssonl, activity: shopping },
  { localler: sara_nilssonl, activity: art },
  { localler: raj_patell, activity: history },
  { localler: raj_patell, activity: food },
  { localler: raj_patell, activity: shopping },
  { localler: julia_kovacsl, activity: art },
  { localler: julia_kovacsl, activity: museum },
  { localler: julia_kovacsl, activity: history },
  { localler: diego_fernandezl, activity: outdoors },
  { localler: diego_fernandezl, activity: nightlife },
  { localler: diego_fernandezl, activity: food },
  { localler: nina_petroval, activity: history },
  { localler: nina_petroval, activity: museum },
  { localler: nina_petroval, activity: art },
  { localler: liam_chenl, activity: food },
  { localler: liam_chenl, activity: shopping },
  { localler: liam_chenl, activity: nightlife },
  { localler: sophie_tremblayl, activity: museum },
  { localler: sophie_tremblayl, activity: history },
  { localler: sophie_tremblayl, activity: art },
  { localler: omar_al_farsil, activity: art },
  { localler: omar_al_farsil, activity: shopping },
  { localler: omar_al_farsil, activity: unique },
  { localler: emily_clarkel, activity: outdoors },
  { localler: emily_clarkel, activity: food },
  { localler: emily_clarkel, activity: unique },
  { localler: laura_martinezl, activity: museum },
  { localler: laura_martinezl, activity: history },
  { localler: laura_martinezl, activity: art },
  { localler: robert_halll, activity: nightlife },
  { localler: robert_halll, activity: food },
  { localler: robert_halll, activity: shopping },
  { localler: anita_khanl, activity: history },
  { localler: anita_khanl, activity: museum },
  { localler: anita_khanl, activity: art },
  { localler: kevin_leel, activity: shopping },
  { localler: kevin_leel, activity: food },
  { localler: kevin_leel, activity: nightlife },
  { localler: elena_romanovl, activity: art },
  { localler: elena_romanovl, activity: museum },
  { localler: elena_romanovl, activity: history },
  { localler: james_wrightl, activity: outdoors },
  { localler: james_wrightl, activity: nightlife },
  { localler: james_wrightl, activity: food },
  { localler: amilia_rodriguezl , activity: food },
  { localler: amilia_rodriguezl , activity: nightlife },
  { localler: amilia_rodriguezl , activity: shopping },
  { localler: alexander_ivankovl, activity: history },
  { localler: alexander_ivankovl, activity: art },
  { localler: alexander_ivankovl, activity: museum },
  { localler: sara_almeidal, activity: art },
  { localler: sara_almeidal, activity: shopping },
  { localler: sara_almeidal, activity: history },
  { localler: michael_schmidtl, activity: food },
  { localler: michael_schmidtl, activity: nightlife },
  { localler: michael_schmidtl, activity: unique },
  { localler: sophia_leblancl, activity: museum },
  { localler: sophia_leblancl, activity: history },
  { localler: sophia_leblancl, activity: art },
  { localler: muhammad_alil, activity: outdoors },
  { localler: muhammad_alil, activity: unique },
  { localler: muhammad_alil, activity: history },
  { localler: anna_kuznetsoval, activity: art },
  { localler: anna_kuznetsoval, activity: museum },
  { localler: anna_kuznetsoval, activity: history },
  { localler: olivia_anderssonl, activity: food },
  { localler: olivia_anderssonl, activity: nightlife },
  { localler: olivia_anderssonl, activity: shopping },
  { localler: lucas_rodriguezl, activity: history },
  { localler: lucas_rodriguezl, activity: art },
  { localler: lucas_rodriguezl, activity: museum },
  { localler: anna_korhonenl, activity: outdoors },
  { localler: anna_korhonenl, activity: unique },
  { localler: anna_korhonenl, activity: history },
  { localler: juan_gomezl, activity: food },
  { localler: juan_gomezl, activity: nightlife },
  { localler: juan_gomezl, activity: history },
  { localler: lucia_fernandezl, activity: art },
  { localler: lucia_fernandezl, activity: shopping },
  { localler: lucia_fernandezl, activity: museum },
  { localler: viktor_petrovl, activity: history },
  { localler: viktor_petrovl, activity: museum },
  { localler: viktor_petrovl, activity: art },
  { localler: lucia_santosl, activity: food },
  { localler: lucia_santosl, activity: nightlife },
  { localler: lucia_santosl, activity: unique },
  { localler: alexander_muellerl, activity: art },
  { localler: alexander_muellerl, activity: museum },
  { localler: alexander_muellerl, activity: history },
  { localler: maria_gonzalezl, activity: history },
  { localler: maria_gonzalezl, activity: museum },
  { localler: maria_gonzalezl, activity: art },
  { localler: sophie_lefebvrel, activity: outdoors },
  { localler: sophie_lefebvrel, activity: unique },
  { localler: sophie_lefebvrel, activity: history },
  { localler: mohammed_alil, activity: art },
  { localler: mohammed_alil, activity: museum },
  { localler: mohammed_alil, activity: history },
  { localler: lara_silval, activity: food },
  { localler: lara_silval, activity: nightlife },
  { localler: lara_silval, activity: shopping },
  { localler: mikhail_ivanovl, activity: history },
  { localler: mikhail_ivanovl, activity: museum },
  { localler: mikhail_ivanovl, activity: art },
  { localler: anna_petroval, activity: food },
  { localler: anna_petroval, activity: nightlife },
  { localler: anna_petroval, activity: shopping },
  { localler: diego_santosl, activity: outdoors },
  { localler: diego_santosl, activity: unique },
  { localler: diego_santosl, activity: history },
  { localler: carmen_lopezl, activity: art },
  { localler: carmen_lopezl, activity: shopping },
  { localler: carmen_lopezl, activity: museum },
  { localler: yusuf_alil, activity: food },
  { localler: yusuf_alil, activity: nightlife },
  { localler: yusuf_alil, activity: unique },
  { localler: lucas_martinezl, activity: history },
  { localler: lucas_martinezl, activity: museum },
  { localler: lucas_martinezl, activity: art },
  { localler: elena_kuznetsoval, activity: outdoors },
  { localler: elena_kuznetsoval, activity: unique },
  { localler: elena_kuznetsoval, activity: history },
  { localler: sofia_garcial, activity: art },
  { localler: sofia_garcial, activity: shopping },
  { localler: sofia_garcial, activity: museum },
  { localler: daniel_andersenl, activity: history },
  { localler: daniel_andersenl, activity: museum },
  { localler: daniel_andersenl, activity: art },
  { localler: ana_martinezl, activity: food },
  { localler: ana_martinezl, activity: nightlife },
  { localler: ana_martinezl, activity: shopping },
  { localler: yulia_petroval, activity: outdoors },
  { localler: yulia_petroval, activity: unique },
  { localler: yulia_petroval, activity: history },
  { localler: luca_rossil, activity: art },
  { localler: luca_rossil, activity: museum },
  { localler: luca_rossil, activity: history },
  { localler: isabella_contil, activity: food },
  { localler: isabella_contil, activity: nightlife },
  { localler: isabella_contil, activity: shopping },
  { localler: antonio_morenol, activity: history },
  { localler: antonio_morenol, activity: museum },
  { localler: antonio_morenol, activity: art },
  { localler: marta_francol, activity: outdoors },
  { localler: marta_francol, activity: unique },
  { localler: marta_francol, activity: history },
  { localler: mark_johnsonl, activity: food },
  { localler: mark_johnsonl, activity: nightlife },
  { localler: mark_johnsonl, activity: shopping },
  { localler: luciana_silval, activity: art },
  { localler: luciana_silval, activity: shopping },
  { localler: luciana_silval, activity: museum },
  { localler: giorgio_rossil, activity: history },
  { localler: giorgio_rossil, activity: museum },
  { localler: giorgio_rossil, activity: art },
  { localler: anna_kovacsl, activity: outdoors },
  { localler: anna_kovacsl, activity: unique },
  { localler: anna_kovacsl, activity: history },
  { localler: gabriel_silval, activity: food },
  { localler: gabriel_silval, activity: nightlife },
  { localler: gabriel_silval, activity: shopping },
  { localler: emilia_rodriguezl , activity: art },
  { localler: emilia_rodriguezl , activity: museum },
  { localler: emilia_rodriguezl , activity: history },
  { localler: pablo_lopezl, activity: history },
  { localler: pablo_lopezl, activity: museum },
  { localler: pablo_lopezl, activity: art },
  { localler: elena_petersonl, activity: food },
  { localler: elena_petersonl, activity: nightlife },
  { localler: elena_petersonl, activity: shopping },
  { localler: giovanni_riccil, activity: art },
  { localler: giovanni_riccil, activity: museum },
  { localler: giovanni_riccil, activity: history },
  { localler: maria_rodriguezl, activity: outdoors },
  { localler: maria_rodriguezl, activity: unique },
  { localler: maria_rodriguezl, activity: history },
  { localler: julia_schmidtl, activity: food },
  { localler: julia_schmidtl, activity: nightlife },
  { localler: julia_schmidtl, activity: shopping },
  { localler: david_martinezl, activity: history },
  { localler: david_martinezl, activity: museum },
  { localler: david_martinezl, activity: art },
  { localler: joseph_wongl, activity: outdoors },
  { localler: joseph_wongl, activity: unique },
  { localler: joseph_wongl, activity: history },
  { localler: anastasia_kuznetsoval, activity: art },
  { localler: anastasia_kuznetsoval, activity: shopping },
  { localler: anastasia_kuznetsoval, activity: museum },
  { localler: nicolas_leroyl, activity: food },
  { localler: nicolas_leroyl, activity: nightlife },
  { localler: nicolas_leroyl, activity: shopping },
  { localler: olga_ivanoval, activity: history },
  { localler: olga_ivanoval, activity: museum },
  { localler: olga_ivanoval, activity: art },
  { localler: fabio_contil, activity: outdoors },
  { localler: fabio_contil, activity: unique },
  { localler: fabio_contil, activity: history },
  { localler: carla_garcial, activity: art },
  { localler: carla_garcial, activity: museum },
  { localler: carla_garcial, activity: history },
  { localler: daniel_nguyenl, activity: food },
  { localler: daniel_nguyenl, activity: nightlife },
  { localler: daniel_nguyenl, activity: shopping },
  { localler: lucia_martinezl, activity: history },
  { localler: lucia_martinezl, activity: museum },
  { localler: lucia_martinezl, activity: art },
  { localler: jakub_nowakl, activity: outdoors },
  { localler: jakub_nowakl, activity: unique },
  { localler: jakub_nowakl, activity: history },
  { localler: anna_smithl, activity: food },
  { localler: anna_smithl, activity: nightlife },
  { localler: anna_smithl, activity: shopping },
  { localler: marco_rodriguezl, activity: art },
  { localler: marco_rodriguezl, activity: shopping },
  { localler: marco_rodriguezl, activity: museum },
  { localler: sophie_duboisl, activity: history },
  { localler: sophie_duboisl, activity: museum },
  { localler: sophie_duboisl, activity: art },
  { localler: maximilian_muellerl, activity: food },
  { localler: maximilian_muellerl, activity: nightlife },
  { localler: maximilian_muellerl, activity: shopping },
  { localler: olivia_andersonl, activity: outdoors },
  { localler: olivia_andersonl, activity: unique },
  { localler: olivia_andersonl, activity: history },
  { localler: felipe_gomezl, activity: art },
  { localler: felipe_gomezl, activity: museum },
  { localler: felipe_gomezl, activity: history },
  { localler: sara_müllerl, activity: food },
  { localler: sara_müllerl, activity: nightlife },
  { localler: sara_müllerl, activity: shopping },
  { localler: leo_rodriguezl, activity: history },
  { localler: leo_rodriguezl, activity: museum },
  { localler: leo_rodriguezl, activity: art },
  { localler: emily_wangl, activity: outdoors },
  { localler: emily_wangl, activity: unique },
  { localler: emily_wangl, activity: history },
  { localler: mikhail_smirnovl, activity: food },
  { localler: mikhail_smirnovl, activity: nightlife },
  { localler: mikhail_smirnovl, activity: shopping },
  { localler: anna_schnëiderl, activity: art },
  { localler: anna_schnëiderl, activity: museum },
  { localler: anna_schnëiderl, activity: history },
  { localler: maria_rodriguezel, activity: outdoors },
  { localler: maria_rodriguezel, activity: unique },
  { localler: maria_rodriguezel, activity: history },
  { localler: thomas_müllerl, activity: history },
  { localler: thomas_müllerl, activity: museum },
  { localler: thomas_müllerl, activity: art },
  { localler: sofia_fernandezl, activity: food },
  { localler: sofia_fernandezl, activity: nightlife },
  { localler: sofia_fernandezl, activity: shopping },
  { localler: andreas_schmidtl, activity: outdoors },
  { localler: andreas_schmidtl, activity: unique },
  { localler: andreas_schmidtl, activity: history },
  { localler: laura_rodriguezl, activity: art },
  { localler: laura_rodriguezl, activity: museum },
  { localler: laura_rodriguezl, activity: history },
  { localler: alexander_schneiderl, activity: food },
  { localler: alexander_schneiderl, activity: nightlife },
  { localler: alexander_schneiderl, activity: shopping },
  { localler: juliana_silval, activity: history },
  { localler: juliana_silval, activity: museum },
  { localler: juliana_silval, activity: art },
  { localler: matteo_bianchil, activity: outdoors },
  { localler: matteo_bianchil, activity: unique },
  { localler: matteo_bianchil, activity: history },
  { localler: elena_popoval, activity: art },
  { localler: elena_popoval, activity: museum },
  { localler: elena_popoval, activity: shopping },
]

localler_activities.each do |localler_activity|
  LocallerActivity.create!(localler_activity)
end

puts "Finished!"
