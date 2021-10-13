# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create({name: 'Desktop', price: 1750.0, image_url: '', description: 'A desktop meant to be able to process mosst things.'})
Product.create({name: 'Laptop', price: 1350.0, image_url: '', description: 'At least its portable.'})
Product.create({name: 'mechanical keyboard', price: 60.0, image_url: '', description: 'A loud keyboard that typically gives better feedback on when you activate the switch for a key press.'})