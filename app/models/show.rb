class Show < ActiveRecord::Base

    def self.highest_rating 
        Show.all.maximum(:rating)
    end

    def self.most_popular_show 
       show = Show.all.map { |s| s.rating }.max
        Show.find_by(rating: show)
    end

    def self.lowest_rating 
        Show.all.map { |s| s.rating}.min
    end

    def self.least_popular_show
        show = Show.all.map { |s| s.rating }.min
        Show.find_by(rating: show)
    end

    def self.ratings_sum
        Show.all.map {|s| s.rating}.sum
    end

    def self.popular_shows
        # Show.all.filter {|s| s.rating > 5}
        Show.where('rating > 5')
    end

    def self.shows_by_alphabetical_order
        Show.order(:name)
    end

end