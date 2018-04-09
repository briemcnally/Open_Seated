import React from 'react';
import { connect } from 'react-redux';
import { requestRestaurant } from '../../actions/restaurant_actions';
import RestaurantShow from './restaurant_show';
import {withRouter} from 'react-router-dom';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
  state: state
});


const mapDispatchToProps = dispatch => ({
  requestRestaurant: (restaurantId) =>
  dispatch(requestRestaurant(restaurantId)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(RestaurantShow));
