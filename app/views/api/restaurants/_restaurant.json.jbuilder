json.extract! restaurant, :id, :name, :street_address,
                        :city, :state, :zip_code, :num_seats,
                        :cuisine, :phone_number, :img_url, :description,
                        :neighborhood
json.price "$" * restaurant.price
