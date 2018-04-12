import { RECEIVE_RESTAURANT, RECEIVE_RESTAURANTS, RECEIVE_RESTAURANT_ERRORS } from '../actions/restaurant_actions';

export default(state = [], action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_RESTAURANT_ERRORS:
      return action.errors;
    case RECEIVE_RESTAURANTS:
      return [];
    case RECEIVE_RESTAURANT:
      return [];
    default:
      return state;
  }
};
