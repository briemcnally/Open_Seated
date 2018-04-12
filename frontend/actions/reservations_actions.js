import * as ReservationAPIUtil from '../util/reservation_util';

import { receiveErrors } from './session_actions';

export const RECEIVE_RESERVATIONS = 'RECEIVE_RESERVATIONS';
export const RECEIVE_RESERVATION = 'RECEIVE_RESERVATION';
export const REMOVE_RESERVATION = 'DELETE_RESERVATION';
export const RECEIVE_RESERVATION_ERRORS = 'RECEIVE_RESERVATION_ERRORS';

const receiveReservations = (reservations) => ({
  type: RECEIVE_RESERVATIONS,
  reservations
});

const receiveReservation = (reservation) => ({
  type: RECEIVE_RESERVATION,
  reservation
});

const removeReservation = (reservationId) => ({
  type: REMOVE_RESERVATION,
  reservationId
});

export const receiveReservationErrors = (errors) => ({
  type: RECEIVE_RESERVATION_ERRORS,
  errors
});

export const requestReservations = () => dispatch => (
  ReservationAPIUtil.fetchReservations().then(
    reservations => dispatch(receiveReservations(reservations))
    ), err => (dispatch(receiveReservationErrors(err.responseJSON))
));

export const requestReservation = (reservationId) => dispatch => (
  ReservationAPIUtil.fetchRestaurant(reservationId).then(
    reservation => (dispatch(receiveReservation(reservation))),
     err => (dispatch(receiveReservationErrors(err.responseJSON))
   )
));

export const createReservation = (formReservation) => dispatch => (
  ReservationAPIUtil.createReservation(formReservation).then(
    reservation => (dispatch(receiveReservation(reservation))),
    err => (dispatch(receiveReservationErrors(err.responseJSON))
  )
));

export const deleteReservation = (reservationId) => dispatch => (
  ReservationAPIUtil.deleteReservation(reservationId).then(
    reservation => (dispatch(removeReservation(reservation.id)))
  )
);

export const updateEvent = (formReservation) => dispatch => (
  ReservationAPIUtil.updateEvent(formReservation).then(
    reservation => (dispatch(receiveReservation(reservation))),
    err => (dispatch(receiveReservationErrors(err.responseJSON))
  ))
);
