import React from 'react';
import { withRouter, Route, Redirect } from 'react-router-dom';
import { connect } from 'react-redux';
import SessionForm from '../components/session_form/session_form';

const Auth = ({ component: Component, path, loggedIn, exact }) => (
  <Route path={path} exact={exact} render={(props) => (
    !loggedIn ? (
      <Component {...props} />
    ) : (
      <Redirect to="/" />
    )
  )} />
);

const mapStateToProps = state => (
  {loggedIn: Boolean(state.session.currentUser)}
);

export const AuthRoute = withRouter(connect(mapStateToProps)(Auth));
