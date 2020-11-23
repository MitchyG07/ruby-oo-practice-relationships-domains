require_relative '../config/environment.rb'
require 'pry'
def reload
  load 'config/environment.rb'
end

mitch = Guest.new("Mitch")
juan = Guest.new("Mitch") 

l1 = Listing.new("Madrid")
l2 = Listing.new("Seattle")

t1 = Trip.new("Madrid trip", l1, mitch)
t2 = Trip.new("Seattle trip", l2, mitch)
y3 = Trip.new("Madrid trip", l1, juan)


binding.pry 
0 
# Pry.start
