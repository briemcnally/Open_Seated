import { RECEIVE_RESERVATION,
        RECEIVE_RESERVATIONS,
        REMOVE_RESERVATION,
        RECEIVE_RESERVATION_ERRORS } from '../actions/reservations_actions';
import { merge } from 'lodash';

export default(state = [], action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch(action.type){
    case RECEIVE_RESERVATIONS:
      return [];
    case RECEIVE_RESERVATION:
      return [];
    case REMOVE_RESERVATION:
      return [];
    case RECEIVE_RESERVATION_ERRORS:
      debugger
      return action.errors;
    default:
      return state;
  }
};
