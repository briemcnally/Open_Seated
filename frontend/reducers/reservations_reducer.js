import {
  RECEIVE_RESERVATION,
  RECEIVE_RESERVATIONS,
  REMOVE_RESERVATION
} from '../actions/reservation_actions';
import { merge } from 'lodash';

export default(state = {}, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type){
    case RECEIVE_RESERVATIONS:
      return action.reservations;
    case RECEIVE_RESERVATION:
      return merge(newState, {[action.reservation.id]: action.reservation});
    case REMOVE_RESERVATION:
      delete newState[action.reservationId];
      return newState;
    default:
      return state;
  }
};
