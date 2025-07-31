# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Artist.find_by_or_create!([
#   {
#    name: "Keith Ang'ana",
#    email: "mail@email.com",
#    bio: "Writer, script writer, columnist",
#    password: 123456
#   },
#   {
#    name: "Natasha Muhanji",
#    description: "Writer, script writer, columnist"
#   }
# ])
