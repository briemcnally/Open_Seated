// export const fetchReviews = (review) => (
//   $.ajax({
//     url: `/api/restaurants/${review.restaurant.id}/reviews`,
//     method: 'GET'
//   })
// );

export const createReview= (review) => (
  $.ajax({
    url: `/api/restaurants/${review.restaurant_id}/reviews`,
    method: 'POST',
    data: { review }
  })
);

export const deleteReview = (review) => (
  $.ajax({
    url: `/api/restaurants/${review.restaurant_id}/reviews/${review.id}`,
    method: 'DELETE',
  })
);

export const updateReview = (review) => (
  $.ajax({
    url: `/api/restaurants/${review.restaurant_id}/reviews/${review.id}`,
    method: 'PATCH',
    data: { review }
  })
);
