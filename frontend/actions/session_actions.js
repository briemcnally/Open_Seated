import * as APIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';

export const receiveCurrentUser = currentUser => ({
  type: RECEIVE_CURRENT_USER,
  currentUser
});

export const receiveErrors = errors => ({
  type: RECEIVE_ERRORS,
  errors
});

export const logoutCurrentUser = errors => ({
  type: LOGOUT_CURRENT_USER
});

export const signup = formUser => dispatch => (APIUtil.signup(formUser)
  .then(user => (dispatch(receiveCurrentUser(user)))
));

export const login = formUser => dispatch => (
  APIUtil.login(formUser).then(user => (dispatch(receiveCurrentUser(user)))
));

export const logout = () => dispatch => (
  APIUtil.logout().then(user => (dispatch(receiveCurrentUser(null)))
));
