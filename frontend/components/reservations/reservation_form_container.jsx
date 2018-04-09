import React from 'react';
import { connect } from 'react-redux';
import ReservationForm from './reservation_form';
import { createReservation } from '../../actions/reservations_actions';
import { requestRestaurant } from '../../actions/restaurant_actions';


const mapStateToProps = (state, ownProps) => ({
  state: state,
  restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  createReservation: reservation => dispatch(createReservation(reservation)),
});

export default connect(mapStateToProps, mapDispatchToProps)(ReservationForm);
