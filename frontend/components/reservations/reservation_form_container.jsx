import React from 'react';
import { connect } from 'react-redux';
import ReservationForm from './reservation_form';
import { createReservation, receiveReservationErrors } from '../../actions/reservations_actions';
import { requestRestaurant } from '../../actions/restaurant_actions';


const mapStateToProps = (state, ownProps) => ({
  state: state,
  restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
  currentUser: state.session.currentUser,
  errors: state.errors.reservations
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  createReservation: reservation => dispatch(createReservation(reservation)),
  clearErrors: (errors) => dispatch(receiveReservationErrors(errors))
});

export default connect(mapStateToProps, mapDispatchToProps)(ReservationForm);
