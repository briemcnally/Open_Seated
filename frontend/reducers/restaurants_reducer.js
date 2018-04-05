import { RECEIVE_RESTAURANTS,
        RECEIVE_RESTAURANT } from '../actions/restaurant_actions';

export default(state = {}, action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_RESTAURANTS:
    case RECEIVE_RESTAURANT:
    default:
      return state;
  }
};
