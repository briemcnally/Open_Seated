import { RECEIVE_RESTAURANTS,
  RECEIVE_RESTAURANT } from '../actions/restaurant_actions';
import { merge } from 'lodash';

export default(state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type){
    case RECEIVE_RESTAURANTS:
      return action.restaurants;
    case RECEIVE_RESTAURANT:
      return merge(newState, {[action.restaurant.id]: action.restaurant});
    default:
      return state;
  }
};
