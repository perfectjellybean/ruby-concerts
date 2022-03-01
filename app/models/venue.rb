class Venue < ActiveRecord::Base
    has_many :concerts
    has_many :bands, through: :concerts

    def concert_on(date:)
        Concert.find_by(date: date)
    end

    def most_frequent_band
        band_performances = bands.group('band_id').order('band_id DESC').count
        band_id = band_performances.max_by{|key, value| value}[0]
        Band.find(band_id)
    end
end