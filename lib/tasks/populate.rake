namespace :db do 
  desc "Fill database with movies"
  task populate: :environment do

  User.create!(
    :firstname => "Ashley",
    :lastname => "Fisher",
    :email => "ashleyfisher@gmail.com",
    :admin => true,
    :password => "password",
    :password_confirmation => "password"
  )

  User.create!(
    firstname: "Bashley",
    lastname: "Fisher",
    email: "bashleyfisher@gmail.com",
    password: "password",
    password_confirmation: "password"
  )

  User.create!(
    firstname: "Mono",
    lastname: "Cotrell",
    email: "monochrome@cotrell.net",
    password: "password",
    password_confirmation: "password"
  )

  Movie.create!(
      :title => "Victor Frankenstein", 
      :release_date => "2015-11-24", 
      :director => "Paul McGuigan", 
      :runtime_in_minutes => 109,
      :remote_image_url => "http://ia.media-imdb.com/images/M/MV5BMTc2Mjk0MTM0NF5BMl5BanBnXkFtZTgwNjgyOTg1NjE@._V1_SX640_SY720_.jpg",
      :description => "James McAvoy and Daniel Radcliffe star in a dynamic and thrilling twist on a legendary tale. Radical scientist Victor Frankenstein and his equally brilliant protégé Igor Strausman share a noble vision of aiding humanity through their groundbreaking research into immortality. But Victor's experiments go too far, and his obsession has horrifying consequences. Only Igor can bring his friend back from the brink of madness and save him from his monstrous creation."
    )

    Movie.create!(
      :title => "Spectre", 
      :release_date => "2015-10-26", 
      :director => "Sam Mendes", 
      :runtime_in_minutes => 144, 
      :remote_image_url => "http://ia.media-imdb.com/images/M/MV5BMjM2Nzg4MzkwOF5BMl5BanBnXkFtZTgwNzA0OTE3NjE@._V1_SX640_SY720_.jpg", 
      :description => "A cryptic message from Bond's past sends him on a trail to uncover a sinister organisation. While M battles political forces to keep the secret service alive, Bond peels back the layers of deceit to reveal the terrible truth behind Spectre."
    )

    Movie.create!(
      :title => "The Hunger Games: Mockingjay, Part 2", 
      :release_date => "2015-11-20", 
      :director => "Francis Lawerence", 
      :runtime_in_minutes => 137, 
      :remote_image_url => "http://ia.media-imdb.com/images/M/MV5BNjQzNDI2NTU1Ml5BMl5BanBnXkFtZTgwNTAyMDQ5NjE@._V1_SX640_SY720_.jpg", 
      :description => "With the nation of Panem in a full scale war, Katniss confronts President Snow in the final showdown. Teamed with a group of her closest friends - including Gale, Finnick and Peeta - Katniss goes off on a mission with the unit from District 13 as they risk their lives to liberate the citizens of Panem, and stage an assassination attempt on President Snow who has become increasingly obsessed with destroying her. The mortal traps, enemies, and moral choices that await Katniss will challenge her more than any arena she faced in The Hunger Games."
    )

    Movie.create!(
      :title => "The Martian", 
      :release_date => "2015-11-24", 
      :director => "Ridley Scott", 
      :runtime_in_minutes => 141, 
      :remote_image_url => "http://ia.media-imdb.com/images/M/MV5BMTc2MTQ3MDA1Nl5BMl5BanBnXkFtZTgwODA3OTI4NjE@._V1_SX640_SY720_.jpg", 
      :description => "During a manned mission to Mars, Astronaut Mark Watney is presumed dead after a fierce storm and left behind by his crew. But Watney has survived and finds himself stranded and alone on the hostile planet. With only meager supplies, he must draw upon his ingenuity, wit and spirit to subsist and find a way to signal to Earth that he is alive. Millions of miles away, NASA and a team of international scientists work tirelessly to bring 'the Martian' home, while his crewmates concurrently plot a daring, if not impossible, rescue mission. As these stories of incredible bravery unfold, the world comes together to root for Watney's safe return."
    )

    Movie.create!(
      :title => "By the Sea", 
      :release_date => "2015-11-24", 
      :director => "Angelina Jolie", 
      :runtime_in_minutes => 122, 
      :remote_image_url => "http://ia.media-imdb.com/images/M/MV5BMTUyNDU2MDMxM15BMl5BanBnXkFtZTgwMzAzMTk1NjE@._V1_SX640_SY720_.jpg", 
      :description => "A married couple takes a vacation in France in the 1970s and find that their time in a sleepy seaside town, complete with a unique array of locals, strengthens their bond and reaffirms their marriage."
    )

      Movie.create!(
      :title => "The Peanuts Movie", 
      :release_date => "2015-11-06", 
      :director => "Steve Martino", 
      :runtime_in_minutes => 93, 
      :remote_image_url => "http://ia.media-imdb.com/images/M/MV5BMTU1MzAxOTY2MV5BMl5BanBnXkFtZTgwNzYzMzM5NTE@._V1_SX640_SY720_.jpg", 
      :description => "Charlie Brown, Snoopy, Lucy, Linus and the rest of the beloved 'Peanuts' gang make their big-screen debut, like they've never been seen before, in state of the art 3D animation. Charlie Brown, the world's most beloved underdog, embarks upon an epic and heroic quest, while his best pal, the lovable beagle Snoopy, takes to the skies to pursue his arch-nemesis, the Red Baron."
    )
    end
end
