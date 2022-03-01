# This will delete any existing rows from the venues and bands tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting Venue/Band data..."
Venue.destroy_all
Band.destroy_all
Concert.destroy_all

puts "Creating Venues..."
la_venue = Venue.create(title: "The Roxy", city: "LA")
chi_venue = Venue.create(title: "Subterranean", city: "Chicago")
nyc_venue = Venue.create(title: "Terminal 5", city: "NYC")

puts "Creating Bands..."
ny_band = Band.create(name: "LCD Soundsystem", hometown: "NYC")
la_band = Band.create(name: "Muna", hometown: "LA")
chi_band = Band.create(name: "Noname", hometown: "Chicago")

puts "Creating Concerts..."
# ****************************************************************
# * TODO: create concerts! Remember, a concert belongs to a band *
# * and a concert belongs to a venue.                            *
# ****************************************************************
# Create concerts Here
concert1 = Concert.create(date: "Jan 1", band_id: 10, venue_id: 10)
concert2 = Concert.create(date: "Jan 10", band_id: 10, venue_id: 12)
concert3 = Concert.create(date: "Feb 2", band_id: 11, venue_id: 10)
concert4 = Concert.create(date: "Feb 3", band_id: 11, venue_id: 11)
concert5 = Concert.create(date: "Feb 4", band_id: 11, venue_id: 10)
concert6 = Concert.create(date: "Feb 5", band_id: 11, venue_id: 10)


puts "Seeding done!"
