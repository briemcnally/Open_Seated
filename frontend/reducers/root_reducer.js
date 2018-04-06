import { combineReducers } from 'redux';
import sessionReducer from './session_reducer';
import errorsReducer from './errors_reducer';
import restaurantsReducer from './restaurants_reducer';

const rootReducer = combineReducers({
  session: sessionReducer,
  errors: errorsReducer,
  restaurants: restaurantsReducer,
});

export default rootReducer;
