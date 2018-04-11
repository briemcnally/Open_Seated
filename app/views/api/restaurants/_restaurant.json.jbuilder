json.extract! restaurant, :id, :name, :street_address,
                        :city, :state, :zip_code, :num_seats,
                        :cuisine, :phone_number, :img_url, :description,
                        :neighborhood
json.average_rating restaurant.average_rating
 # :average_food_rating, :average_service_rating, :average_ambience_rating,:average_value_rating
json.price "$" * restaurant.price
