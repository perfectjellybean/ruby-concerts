class Band < ActiveRecord::Base
    has_many :concerts
    has_many :venues, through: :concerts

    def play_in_venue(venue:, date:)
        Concert.create(date: date, venue_id: venue.id, band_id: self.id)
    end

    def all_introductions
        concerts.map do |concert|
            concert.introduction
        end
    end

    def self.most_performances
        band_performances = Concert.all.group('band_id').order('band_id DESC').count
        band_id = band_performances.max_by{|key, value| value}[0]
        Band.find(band_id)
    end
end