# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Album.delete_all
Artist.delete_all

5.times do |i|
  Artist.create(name: "Artist_0#{i}",
              years_active: "1999-2025",
              members: "Member_01, Members_02, Member_03, Member_04")
end

id = Artist.all.first.id

5.times do |i|
  Album.create(name: "Album_name_0#{i}", price: 14.99, artist_id: id)
end
