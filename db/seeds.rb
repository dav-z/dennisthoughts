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
  {user_id: 4, title: 'I really suck', body: 'Wow, I can not believe I suck so bad. My mother would be ashamed.'}
])
