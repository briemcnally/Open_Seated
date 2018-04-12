import { RECEIVE_REVIEW, RECEIVE_REVIEWS, RECEIVE_REVIEW_ERRORS } from '../actions/reviews_actions';
import { merge } from 'lodash';

export default(state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type){
    case RECEIVE_REVIEW:
      return [];
    case RECEIVE_REVIEWS:
      return [];
    case RECEIVE_REVIEW_ERRORS:
      return action.errors;
    default:
      return state;
  }
};
