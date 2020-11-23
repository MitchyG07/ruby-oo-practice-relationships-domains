class Dessert 
    attr_accessor :name
    
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.dessert == self}
    end 

    def calories 
        self.ingredients.sum{|ingredient| ingredient.calories}
    end 

    


end 