# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

p "Clearing DB..."
Task.destroy_all

p "Creating Tasks..."

pos = 0
15.times do
  task = Task.create!(description: Faker::Quotes::Shakespeare.unique.hamlet_quote, done: false)
  p pos
  task.update!(position: pos)
  pos += 1
end

p "finish!"
