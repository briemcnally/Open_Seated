import * as FavoritesAPIUtil from '../util/favorites_util';
import { receiveCurrentUser } from './session_actions';

export const addFavorite = restaurantId => dispatch => (
  FavoritesAPIUtil.addFavorite(restaurantId).then(
    user => dispatch(receiveCurrentUser(user))
  )
);

export const deleteFavorite = restaurantId => dispatch => (
  FavoritesAPIUtil.deleteFavorite(restaurantId).then(
    user => dispatch(receiveCurrentUser(user))
  )
);
