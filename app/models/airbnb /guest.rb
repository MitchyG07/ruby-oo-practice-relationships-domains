class Guest 
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name 
        @@all << self 
    end  

    def self.all 
        @@all 
    end 

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end 

    def listings 
        trips.map {|trip| trip.listing}
    end 

    def self.pro_traveler
        pro_travelers = []
        guests = Trip.all.map {|trip| trip.guest}
        count = Hash.new(0)
        guests.each {|v| count[v] += 1}
        count.each {|k,v| pro_travelers << k if v > 1}
        pro_travelers
    end 

    def self.find_all_by_name(name)
        guest = Trip.all.select {|trip| trip.guest.name == name}
        guest.map {|x| x.guest}.uniq
    end 

end 