# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Editing.destroy_all
Post.destroy_all
User.destroy_all

users = []
10.times do |i|
  users << User.create!(name: "User #{i + 1}", email: "user#{i + 1}@example.com")
end

posts = []
10.times do |i|
  posts << Post.create!(title: "Post #{i + 1}", content: "Content for post #{i + 1}", creator: users.sample)
end

10.times do |i|
  Editing.create!(user: users.sample, post: posts.sample)
end