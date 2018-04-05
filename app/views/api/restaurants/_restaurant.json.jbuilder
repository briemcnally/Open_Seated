json.extract! restaurant, :id, :name, :street_address,
                        :city, :state, :zip_code, :num_seats,
                        :cuisine, :phone_number
json.img_url image_path(restaurant.img_url)
