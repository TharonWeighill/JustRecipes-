20.times do 
    User.create(username: Faker::Internet.username, email: Faker::Internet.email, password: Faker::Internet.password, about: Faker::TvShows::TwinPeaks.quote)
end 

20.times do
    Recipe.create(recipe_name: Faker::Food.dish, directions: Faker::Food.description, difficulty: Faker::Number.between(from:1, to: 10,), cuisine: Faker::Restaurant.type,) #users_id: Faker::Number.between(from:1, to: 20,))
end