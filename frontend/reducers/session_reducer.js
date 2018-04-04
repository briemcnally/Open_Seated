import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import { merge } from 'lodash';

const _nullSession = ({
  currentUser: null
});

export default (state = _nullSession, action) => {
  Object.freeze(state);
  switch(action.type){
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return merge( {}, { currentUser });
    default:
      return state;
  }
};
