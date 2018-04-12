import * as RestaurantAPIUtil from '../util/restaurant_util';

export const RECEIVE_RESTAURANTS = 'RECEIVE_RESTAURANTS';
export const RECEIVE_RESTAURANT = 'RECEIVE_RESTAURANT';
export const RECEIVE_RESTAURANT_ERRORS = 'RECEIVE_RESTAURANT_ERRORS';

export const receiveRestaurants = (restaurants) => ({
  type: RECEIVE_RESTAURANTS,
  restaurants
});

export const receiveRestaurant = (restaurant) => ({
  type: RECEIVE_RESTAURANT,
  restaurant
});

export const receiveRestaurantErrors = (errors) => ({
  type: RECEIVE_RESTAURANT_ERRORS,
  errors
});

export const requestRestaurants = () => dispatch => (
  RestaurantAPIUtil.fetchRestaurants().then(
    restaurants => (dispatch(receiveRestaurants(restaurants))
  ))
);

export const requestRestaurant = (restaurantId) => dispatch => (
  RestaurantAPIUtil.fetchRestaurant(restaurantId).then(
    restaurant => (dispatch(receiveRestaurant(restaurant))
  ))
);

export const createRestaurant = formRestaurant => dispatch => (
  RestaurantAPIUtil.createRestaurant(formRestaurant).then(
    restaurant => dispatch(receiveRestaurant(restaurant)),
    err => (dispatch(receiveRestaurantErrors(err.responseJSON))
  ))
);

export const searchRestaurants = (searchTerm) => dispatch => (
  RestaurantAPIUtil.findRestaurants(searchTerm).then(
    restaurants => (dispatch(receiveRestaurants(restaurants))
  )
));

export const postRestaurants = (Searchrestaurants) => dispatch => (
  RestaurantAPIUtil.postRestaurants(Searchrestaurants).then(
    restaurants => (dispatch(receiveRestaurants(restaurants))
  )
));
