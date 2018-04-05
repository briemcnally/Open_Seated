import * as RestaurantAPIUtil from '../util/restuarant_util';

export const RECEIVE_RESTAURANTS = 'RECEIVE_RESTAURANTS';
export const RECEIVE_RESTAURANT = 'RECEIVE_RESTAURANT';

export const receiveRestaurants = (restaurants) => ({
  type: RECEIVE_RESTAURANTS,
  restaurants
});

export const receiveRestaurant = (restaurant) => ({
  type: RECEIVE_RESTAURANT,
  restaurant
});

export const requestRestaurants = () => dispatch => (
  RestaurantAPIUtil.fetchRestaurants().then(
    restaurants => dispatch(receiveRestaurants(restaurants))
  )
);

export const requestRestaurant = (restaurantId) => dispatch => (
  RestaurantAPIUtil.fetchRestaurant(restaurantId).then(
    restaurant => dispatch(receiveRestaurant(restaurant))
  )
);

export const createRestaurant = (formRestaurant) => dispatch => (
  RestaurantAPIUtil.createRestaurant(formRestaurant).then(
    restaurant => dispatch(receiveRestaurant(restaurant))
  )
);
