@restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.partial! 'resaurant', restaurant: restaurant
  end
end
