import React from 'react';
import ReactDOM from 'react-dom';
import Root from './components/root';
import configureStore from './store/store';
import { login, logout } from './actions/session_actions';
import { fetchRestaurant, fetchRestaurants, createRestaurant }
        from './actions/restaurant_actions';

document.addEventListener('DOMContentLoaded', () =>{
  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.login = login;
  window.logout = logout;
  window.fetchRestaurant = fetchRestaurant;
  window.fetchRestaurants = fetchRestaurants;
  window.createRestaurant = createRestaurant;

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={ store } />, root);
});
