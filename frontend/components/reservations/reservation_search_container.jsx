import React from 'react';
import { connect } from 'react-redux';
import ReservationSearch from './reservation_search';
import { requestReservation, createReservation } from '../../actions/reservations_actions';
import requestRestaurant from '../../actions/restaurant_actions';


const convertDate = (date) => {
  const yyyy = date.getFullYear().toString();
  const mm = (date.getMonth() + 1).toString();
  const dd = date.getDate().toString();

  let mmChars = mm.split("");
  let ddChars = dd.split("");
  return yyyy + '-' + (mmChars[1] ? mm : "0" + mmChars[0]) + "-" + (ddChars[1] ? dd : "0" + ddChars[0]) ;
};

const mapStateToProps = (state, ownProps) => {
  const reservation = {
    num_guests: 2,
    date: convertDate(new Date()),
    time: '4:30 PM'
  };
  const currentUser = state.session.currentUser;
  return { reservation, currentUser };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  requestReservation: reservationId => dispatch(requestReservation(reservationId)),
  requestRestaurant: restaurantId => dispatch(requestRestaurant(restaurantId)),
  createReservation: formReservation => dispatch(createReservation(formReservation))
});

export default connect(mapStateToProps, mapDispatchToProps)(ReservationSearch);
