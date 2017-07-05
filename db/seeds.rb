# seeds.rb
# Create users
User.create([
  {id: 1, first_name: 'Hans', last_name: 'Palacios', email: 'hans@mrperfect.com', username: 'hans', bio: 'I am boring so I do not have a bio.', password: 'duckduckgoose'},
  {id: 2, first_name: 'James', last_name: 'Lim', email: 'james@bond.com', username: 'james', bio: 'I am boring so I do not have a bio.', password: 'shakennotstirred'},
  {id: 3, first_name: 'Neil', last_name: 'Parsa', email: 'neil@parsa.net',
    username: 'neil', bio: 'I am boring so I do not have a bio.', password: 'neilneil'},
  {id: 4, first_name: 'Logan', last_name: 'Baker', email: 'logan@animalhospital.org', username: 'logan', bio: 'I am boring so I do not have a bio.', password: 'password'},
  {id: 5, first_name: 'David', last_name: 'Zheng', email: 'dennis@itsalwayssunny.com', username: 'david', bio: 'I am boring so I do not have a bio.', password: '134><DFNAL!#$3'},
  {id: 6, first_name: 'Victor', last_name: 'Ganda', email: 'Victor@liverpoolfc.com', username: 'victor', bio: 'I am boring so I do not have a bio.', password: 'manusucks'},
  {id: 7, first_name: 'Erin', last_name: 'Young', email: 'erin@young.com', username: 'erin', bio: 'I am boring so I do not have a bio.', password: 'westvirginiaisthebestvirginia'},
  {id: 8, first_name: 'Steven', last_name: 'Velez-Garcia', email: 'steven@steven.com', username: 'steven', bio: 'I am boring so I do not have a bio.', password: '1234'},
  {id: 9, first_name: 'Katy', last_name: 'Pola', email: 'katy@pola.com', username: 'katy', bio: 'I am boring so I do not have a bio.', password: 'paperpaper'},
  {id: 10, first_name: 'Julia', last_name: 'Kopyeva', email: 'julia@k.ru', username: 'julia', bio: 'I am boring so I do not have a bio.', password: 'designsbyjulia'},
  {id: 11, first_name: 'Nick', last_name: 'Fehlinger', email: 'nick@lodeon.com', username: 'nick', bio: 'I am boring so I do not have a bio.', password: 'supersecret'}
])

Post.create([
  {user_id: 8, title: 'Ducks are great', body: 'Ducks are the best pets to operate on.  They love bread, so they always have money to pay on time.'},
  {user_id: 8, title: 'Johnny Nmemonic is the Greatest Movie of our time', body: 'Johnny Nmemonic needs his room service.  This tour de fource from Keanu Reeves forever transformed the genre of futuristic action thrillers.  The dolphin hacker single-finnedly convinced me to devote my energy towards attaining its level of sonar coding dominance.  One day I will also fry Dolph Lundgren with the power of my coding abilities.'},
  {user_id: 8, title: 'What is all this?', body: 'This is madness, madness I tell you!'}
])
