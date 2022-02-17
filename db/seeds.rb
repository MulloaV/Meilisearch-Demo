require 'faker'

Restaurant.destroy_all

1000.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    cuisine: Faker::Restaurant.type,
    description: Faker::Restaurant.description)

  rand(5..10).times do
    restaurant.reviews.create body: Faker::Restaurant.review
  end
end