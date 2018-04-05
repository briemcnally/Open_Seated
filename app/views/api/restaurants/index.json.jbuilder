@restaurants.each do |restaurant|
  json.set! restaurant.id do
    json.partial! 'resaurant', restaurant: restaurant
    json.img_url image_path(restaurant.img_url)
  end
end
