import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { login, receiveErrors } from '../../actions/session_actions';
import LoginForm from './login_form';

const mapStateToProps = (state, ownProps) => ({
  errors: state.errors.session,
  formType: 'Sign In',
  usercred: {username: "", password: ""}
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  processForm: (user) => dispatch(login(user)),
  clearErrors: (errors) => dispatch(receiveErrors(errors)),
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginForm);
