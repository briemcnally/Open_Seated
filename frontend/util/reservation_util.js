export const fetchReservations = (reservation) => (
  $.ajax({
    url: `/api/restaurants/${reservation.restaurant.id}/reservations`,
    method: 'GET'
  })
);

export const fetchReservation = (reservation) => (
  $.ajax({
    url: `/api/restaurants/${reservation.restaurantId}/reservations/${reservation.id}`,
    method: 'GET',
  })
);

export const createReservation = (reservation) => (
  $.ajax({
    url: `/api/restaurants/${reservation.restaurantId}/reservations`,
    method: 'POST',
    data: { reservation }
  })
);

export const updateReservation = (reservation) => (
  $.ajax({
    url: `/api/reservations/${reservation.id}`,
    method: 'PATCH',
    data: { reservation }
  })
);

export const deleteReservation = (reservationId) => (
  $.ajax({
    url: `/api/reservations/${reservationId}`,
    method: 'DELETE'
  })
);
