json.key_format! camelize: :lower
json.extract! reservation, :id, :user_id, :restaurant_id, :num_guests, :date, :time, :points
