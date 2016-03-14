# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

FoodItem.delete_all

id_counter = 0

section = 'Breakfast'
breakfast = [
  ['Pho Bo', 'Yummy', 50000],
  ['Pho Ga', 'Yummy', 50000],
  ['Mi Vit Tiem', 'Yummy', 88000],
  ['Hu Tieu', 'Yummy', 33000],
  ['Bun Bo', 'Yummy', 35000],
]
breakfast.each do |food|
  id_counter += 1
  FoodItem.create id: id_counter, name: food[0], description: food[1], price: food[2], section: section
end

section = 'Lunch'
lunch = [
  ['Com Suon', 'Yummy', 50000],
  ['Com Ga', 'Yummy', 50000],
  ['Canh Chua', 'Yummy', 88000],
  ['Ech Xao', 'Yummy', 33000],
  ['Com Chay', 'Yummy', 35000],
]
lunch.each do |food|
  id_counter += 1
  FoodItem.create id: id_counter, name: food[0], description: food[1], price: food[2], section: section
end

section = 'Dinner'
dinner = [
  ['Ga Xao Toi', 'Yummy', 50000],
  ['Pizza', 'Yummy', 50000],
  ['Spaghetti', 'Yummy', 88000],
  ['Mi Goi', 'Yummy', 33000],
  ['Ca Loc Kho Tieu', 'Yummy', 35000],
]
dinner.each do |food|
  id_counter += 1
  FoodItem.create id: id_counter, name: food[0], description: food[1], price: food[2], section: section
end

section = 'Drink'
drink = [
  ['Tra Da', 'Yummy', 123000],
  ['Ruou De', 'Yummy', 1000],
  ['Nuoc Cam', 'Yummy', 25000],
  ['Milo', 'Yummy', 3000],
  ['Cafe', 'Yummy', 20000],
]
drink.each do |food|
  id_counter += 1
  FoodItem.create id: id_counter, name: food[0], description: food[1], price: food[2], section: section
end