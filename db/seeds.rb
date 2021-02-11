5.times do 
    User.create(username: Faker::Internet.username, email: Faker::Internet.email, password: Faker::Internet.password,
    avatar: Faker::Avatar.image, about: Faker::TvShows::TwinPeaks.quote)
end 