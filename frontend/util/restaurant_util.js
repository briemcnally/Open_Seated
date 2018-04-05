export const fetchRestaurants = () => (
  $.ajax({
    url: '/api/restaurants',
    method: 'GET'
  })
);

export const fetchRestaurant = (restaurantId) => (
  $.ajax({
    url: `/api/restaurants/${restaurantId}`,
    method: 'GET',
  })
);

export const createRestaurant = (restaurant) => (
  $.ajax({
    url: '/api/restaurants',
    method: 'POST',
    data: { restaurant }
  })
);
