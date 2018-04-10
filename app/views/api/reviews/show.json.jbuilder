json.review do
  json.partial! '/api/reviews/review', review: @review
end

json.average_rating @review.restaurant.average_rating
json.average_food_rating @review.restaurant.average_food_rating
json.average_service_rating @review.restaurant.average_service_rating
json.average_ambience_rating @review.restaurant.average_ambience_rating
json.average_value_rating @review.restaurant.average_value_rating
