class Bakery
    attr_reader :name 

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def ingredients
        Ingredient.all.select {|ingredient| ingredient.bakery == self}
    end 

    def desserts
        ingredients.map {|ingredient| ingredient.dessert} 
    end 

    def average_calories
        self.ingredients.sum{|i| i.calories}/ desserts.length
    end 

    def shopping_list
       puts self.ingredients.map{|i| i.name}
    end 

end  