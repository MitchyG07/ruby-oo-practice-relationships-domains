require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

# mitch = Guest.new("Mitch")
# juan = Guest.new("Mitch") 

# l1 = Listing.new("Madrid")
# l2 = Listing.new("Seattle")

# t1 = Trip.new("Madrid trip", l1, mitch)
# t2 = Trip.new("Seattle trip", l2, mitch)
# y3 = Trip.new("Madrid trip", l1, juan)

mitch = Bakery.new("Mitch's")
john = Bakery.new("John's")

moose = Dessert.new("moose")
vanilla_ice = Dessert.new("vanilla ice") 
cinnamon_toast= Dessert.new("cinnamon_toast")

chocolate = Ingredient.new("Chocolate",100, moose, mitch)
vanilla = Ingredient.new("Vanilla", 50, vanilla_ice, john)
cinnamon = Ingredient.new("Cinnamon",50, cinnamon_toast, mitch)

binding.pry 
0 
# Pry.start
