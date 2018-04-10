import React from 'react';
import { connect } from 'react-redux';
import { requestRestaurants } from '../../actions/restaurant_actions';
import RestaurantSearch from './restaurant_search';

const mapStateToProps = state => ({
  restaurants: Object.values(state.entities.restaurants)
});


const mapDispatchToProps = dispatch => ({
  requestRestaurants: () => dispatch(requestRestaurants()),
});

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantSearch);
