class Ingredient
    attr_reader :name, :calories 
    attr_accessor :dessert, :bakery

    @@all = [] 
    def initialize(name, calories, dessert, bakery)
        @name = name 
        @calories = calories 
        @dessert = dessert 
        @bakery = bakery
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def self.find_all_by_name(name)
        array = []
        @@all.each do |ingredient| 
            if ingredient.name.include? "#{name}"
                array << ingredient.name
            end 
        end
        array
    end 

    

end 