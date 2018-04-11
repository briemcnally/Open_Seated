import { RECEIVE_REVIEW } from '../actions/reviews_actions';
import { RECEIVE_RESTAURANT } from '../actions/restaurant_actions';
import { merge } from 'lodash';

export default(state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type){
    case RECEIVE_REVIEW:
      const { review } = action;
      return merge({}, state, { [review.id]: review });
    default:
      return state;
  }
};
