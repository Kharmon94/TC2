# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'Takecareny96@gmail.com', password: 'Guest613*', password_confirmation: 'Guest613*') if Rails.env.development?
# Spree::Core::Engine.load_seed if defined?(Spree::Core)
# Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
