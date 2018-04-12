export const addFavorite = (restaurantId) => (
  $.ajax({
    url: 'api/favorites',
    method: 'POST',
    data: { restaurantId }
  })
);

export const deleteFavorite = (restaurantId) => (
  $.ajax({
    url: `api/favorites/${restaurantId}`,
    method: 'DELETE'
  })
);
