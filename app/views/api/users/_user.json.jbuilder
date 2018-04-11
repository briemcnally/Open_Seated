json.extract! user, :id, :username, :email, :password_digest, :session_token, :fname, :lname, :img_url
json.favorite_restaurants user.favorite_restaurants.pluck(:id)
