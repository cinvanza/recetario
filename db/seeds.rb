# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Eliminando las recetas"
Recipe.destroy_all
Ingredient.destroy_all

puts "Creando las recetas"
# Crea las dos recetas
recipe1 = Recipe.create(name: "Tarta de manzana")
recipe2 = Recipe.create(name: "Ensalada César")

# Añade ingredientes para la primera receta
Ingredient.create(name: "Manzanas", quantity: "4", recipe: recipe1)
Ingredient.create(name: "Azúcar", quantity: "200g", recipe: recipe1)
Ingredient.create(name: "Harina", quantity: "300g", recipe: recipe1)

# Añade ingredientes para la segunda receta
Ingredient.create(name: "Lechuga", quantity: "1 cabeza", recipe: recipe2)
Ingredient.create(name: "Pechuga de pollo", quantity: "200g", recipe: recipe2)
Ingredient.create(name: "Salsa César", quantity: "100ml", recipe: recipe2)

puts "Se han creado #{Recipe.count} recetas y #{Ingredient.count} ingredientes"
