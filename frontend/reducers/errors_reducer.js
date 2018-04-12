import { combineReducers } from 'redux';
import sessionErrorsReducer from './session_errors_reducer';
import restaurantErrorsReducer from './restaurant_errors_reducer';
import reviews from './reviews_errors_reducer';
import reservations from './reservations_errors_reducer';

export default combineReducers({
  session: sessionErrorsReducer,
  restaurants: restaurantErrorsReducer,
  reviews,
  reservations,
});
