import React from 'react';
import { connect } from 'react-redux';
import ReservationSearch from './reservation_search';
import requestReservation from '../../actions/reservations_actions';
import requestRestaurant from '../../actions/restaurant_actions';

const mapStateToProps = (state, ownProps) => {
  const reservation = {
    num_guests: 2,
    date: new Date().toDateString(),
    time: '4:30 PM'
  };
  return { reservation };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestReservation: reservationId => dispatch(requestReservation(reservationId)),
  requestRestaurant: restaurantId => dispatch(requestRestaurant(restaurantId))
});

export default connect(mapStateToProps, mapDispatchToProps)(ReservationSearch);
