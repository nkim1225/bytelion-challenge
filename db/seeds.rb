# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Backscratcher.destroy_all

Backscratcher.create(item_name: "itcher", item_description: "number one backscratcher", item_size: "XL", item_cost: "$14.00")
Backscratcher.create(item_name: "the itcher", item_description: "number two backscratcher", item_size: "L", item_cost: "$8.00")
Backscratcher.create(item_name: "the itcher 3", item_description: "number three backscratcher", item_size: "XS", item_cost: "$4.00")