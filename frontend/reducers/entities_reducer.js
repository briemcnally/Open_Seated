import { combineReducers } from 'redux';

import restaurants from './restaurants_reducer';
import reservations from './reservations_reducer';

export default combineReducers({
  restaurants,
  reservations
});
