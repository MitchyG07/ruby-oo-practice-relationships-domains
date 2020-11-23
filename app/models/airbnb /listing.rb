class Listing 
    attr_reader :city

    @@all = [] 
    def initialize(city)
        @city = city 
        @@all << self 
    end 

    def self.all
        @@all 
    end 

    def listings
        Trip.all.select {|trip| trip.listing == self}
    end 

    def guests
        listings.map {|trip| trip.guest}
    end 

    def trip_count 
        guests.count
    end 

    def self.find_all_by_city(city)
        trips = Trip.all.select {|trip| trip.listing.city == city}
        trips.map {|trip| trip.listing}.uniq
    end 

    def self.most_popular 
        listings = Trip.all.map {|trip| trip.listing}
        count = Hash.new(0)
        listings.each do |v|
            count[v] += 1  
        end 
        count_array = count.map {|k, v| v}
        count.find {|k,v| v == count_array.max()}
    end 

end  