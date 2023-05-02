# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Sheet.create([
  { column: 1, row: 'a' },
  { column: 2, row: 'a' },
  { column: 3, row: 'a' },
  { column: 4, row: 'a' },
  { column: 5, row: 'a' },
  { column: 1, row: 'b' },
  { column: 2, row: 'b' },
  { column: 3, row: 'b' },
  { column: 4, row: 'b' },
  { column: 5, row: 'b' },
  { column: 1, row: 'c' },
  { column: 2, row: 'c' },
  { column: 3, row: 'c' },
  { column: 4, row: 'c' },
  { column: 5, row: 'c' }])

  Schedule.create([
  { movie_id: 1, start_time: '12:00', end_time: '13:30' },
  { movie_id: 1, start_time: '14:00', end_time: '15:30' },
  { movie_id: 1, start_time: '16:00', end_time: '17:30' },
  { movie_id: 2, start_time: '18:00', end_time: '19:30' },
  { movie_id: 2, start_time: '20:00', end_time: '21:30' },
  { movie_id: 2, start_time: '09:00', end_time: '10:30' },
  { movie_id: 3, start_time: '11:00', end_time: '12:30' },
  { movie_id: 4, start_time: '13:00', end_time: '14:30' },
  { movie_id: 4, start_time: '15:00', end_time: '16:30' },
  { movie_id: 5, start_time: '17:00', end_time: '18:30' }
  ])

  Movie.create([
    {
      name: "The Secret of the Hidden Forest",
      year: "2022",
      description: "Deep in the heart of the forest lies a secret that has been kept hidden for centuries. When a group of friends stumble upon the entrance to the hidden world, they embark on an adventure unlike any other. They must solve puzzles, face dangerous creatures, and outsmart the forest's guardians to uncover the truth and save the world as they know it.",
      image_url: "https://picsum.photos/200/300",
      is_showing: true
    },
    {
      name: "Escape from the Dark Dimension",
      year: "2021",
      description: "Trapped in a dark dimension, a group of astronauts must fight to stay alive against all odds. They encounter strange creatures and mind-bending phenomena as they struggle to find a way back to their own reality. But as they get closer to the truth, they realize that the dark dimension may be more than just a prison—it may be a living entity with its own plans for them.",
      image_url: "https://picsum.photos/200/300",
      is_showing: true
    },
    {
      name: "The Last of the Sky Pirates",
      year: "2023",
      description: "In a world ruled by flying pirate ships, one young orphan dreams of taking to the skies and becoming a legendary sky pirate. But when a mysterious stranger comes to town, he finds himself swept up in a quest to save the world from an ancient evil. Along the way, he meets a colorful cast of characters and uncovers the secrets of the sky pirates.",
      image_url: "https://picsum.photos/200/300",
      is_showing: false
    },
    {
      name: "The Curse of the Forbidden Tomb",
      year: "2022",
      description: "When a group of archaeologists uncover an ancient tomb, they unwittingly unleash a curse that threatens to destroy them all. They must race against time to unravel the mystery of the tomb and stop the curse before it's too late. But as they delve deeper into the tomb's secrets, they realize that some things are better left buried.",
      image_url: "https://picsum.photos/200/300",
      is_showing: true
    },
    {
      name: "The Kingdom of the Crystal Mountain",
      year: "2024",
      description: "In a world where magic and technology coexist, a young adventurer sets out on a quest to find the legendary Crystal Mountain. Along the way, he battles dragons, solves puzzles, and uncovers the secrets of the ancient kingdom. But as he gets closer to his goal, he realizes that the true power of the crystal may be more than he can handle.",
      image_url: "https://picsum.photos/200/300",
      is_showing: false
    }
  ])

