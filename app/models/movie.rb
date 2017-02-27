class Movie < ActiveRecord::Base
    
    def self.ratings
        Movie.select(:rating).distinct.inject([]){|arr,m| arr.push m.rating}
    end
    
end