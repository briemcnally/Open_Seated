json.extract! restaurant, :id, :name, :street_address,
                        :city, :state, :zip_code, :num_seats,
                        :cuisine, :phone_number, :img_url, :description,
                        :neighborhood
json.average_rating restaurant.average_rating
json.average_food_rating restaurant.average_food_rating
json.average_service_rating restaurant.average_service_rating
json.average_ambience_rating restaurant.average_ambience_rating
json.average_value_rating restaurant.average_value_rating
json.price "$" * restaurant.price
json.favorite_diners restaurant.favorite_diners.pluck(:id)
