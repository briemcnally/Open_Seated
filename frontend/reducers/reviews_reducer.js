import { RECEIVE_REVIEW } from '../actions/reviews_actions';
import { merge } from 'lodash';

export default(state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type){
    case RECEIVE_REVIEW:
    const { review, averageRating, averageFoodRating,
    averageServiceRating, averageAmbienceRating, averageValueRating  } = action;
    newState[review.restaurant_id].reviewIds.push(review.id);
    newState[review.restaurant_id].averageRating = averageRating;
    newState[review.restaurant_id].averageFoodRating = averageFoodRating;
    newState[review.restaurant_id].averageServiceRating = averageServiceRating;
    newState[review.restaurant_id].averageAmbienceRating = averageAmbienceRating;
    newState[review.restaurant_id].averageValueRating = averageValueRating;
    return newState;
    default:
      return state;
  }
};
