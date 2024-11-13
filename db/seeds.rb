require 'faker'

puts 'Creating 20 fake flats...'
20.times do
  flat = Flat.new(
    name: Faker::CryptoCoin.coin_name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Adjective.positive,
    price_per_night: ["100", "200", "300", "400", "500"].sample,
    number_of_guests: ["1", "2", "3", "4", "5", "6", "20"].sample
  )
  flat.save!
end
puts 'Finished!'
