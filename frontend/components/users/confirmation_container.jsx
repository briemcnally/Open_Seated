import React from 'react';
import { connect } from 'react-redux';
import Confirmation from './confirmation';
import { requestReservation, createReservation } from '../../actions/reservations_actions';
import requestRestaurant from '../../actions/restaurant_actions';



const mapStateToProps = (state, ownProps) => ({
  reservation: state.reservations,
  restaurant: state.restaurants,
  currentUser: state.currentUser,
  errors: state.errors.reservations
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestReservation: reservationId => dispatch(requestReservation(reservationId)),
  requestRestaurant: restaurantId => dispatch(requestRestaurant(restaurantId)),
  createReservation: formReservation => dispatch(createReservation(formReservation))
});

export default connect(mapStateToProps, mapDispatchToProps)(Confirmation);
