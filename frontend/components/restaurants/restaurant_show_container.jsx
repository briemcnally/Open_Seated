import React from 'react';
import { connect } from 'react-redux';
import { requestRestaurant } from '../../actions/restaurant_actions';
import RestaurantShow from './restaurant_show';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.restaurants[ownProps.match.params.restaurantId]
});


const mapDispatchToProps = dispatch => ({
  requestRestaurant: (restaurantId) => dispatch(requestRestaurant(restaurantId)),
});

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantShow);
