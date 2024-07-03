# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants"
hashimoto = {name: "Hashimoto", address: "Fröschchengasse 14, 66111 Saarbrücken", phone_number: "+49 185 9735 2938 28", category: "japanese"}
pizza_per_tutti = {name: "Pizza per Tutti", address: "Saargemünder Str. 145, 66119 Saarbrücken", phone_number: "+49 681 6453 288", category: "italian"}
kalinski = {name: "Kalinski", address: "Kingsroad 56a, 72 London", phone_number: "+4474395959832", category: "belgian"}
brasserie = {name: "Brasserie", address: "Rue de Belfort, 5837 Paris", phone_number: "+33243995827282", category: "french"}
dim_sum = {name: "Dim Sum", address: "Tree Avenue 57, New York", phone_number: "+66 43783249385", category: "chinese"}

[hashimoto, pizza_per_tutti, kalinski, brasserie, dim_sum].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
