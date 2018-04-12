import React from 'react';
import { connect } from 'react-redux';
import { requestRestaurant } from '../../actions/restaurant_actions';
import RestaurantShow from './restaurant_show';
import {withRouter} from 'react-router-dom';
import { createReview } from '../../actions/reviews_actions';
import { addFavorite, deleteFavorite } from '../../actions/favorites_actions';
import { receiveCurrentUser } from '../../actions/session_actions';

const mapStateToProps = (state, ownProps) => ({
  restaurant: state.entities.restaurants[ownProps.match.params.restaurantId],
  currentUser: state.session.currentUser,
  state: state
});


const mapDispatchToProps = dispatch => ({
  requestRestaurant: (restaurantId) => dispatch(requestRestaurant(restaurantId)),
  createReview: (review) => dispatch(createReview(review)),
  addFavorite: (restaurantId) => dispatch(addFavorite(restaurantId)),
  deleteFavorite: (restaurantId) => dispatch(deleteFavorite(restaurantId)),
  receiveCurrentUser: (currentUser) => dispatch(receiveCurrentUser(currentUser))

});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(RestaurantShow));
