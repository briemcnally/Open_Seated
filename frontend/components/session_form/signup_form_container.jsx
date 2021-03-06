import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { signup, receiveErrors } from '../../actions/session_actions';
import SignupForm from './new_account_form';

const mapStateToProps = (state, ownProps) => ({
  errors: state.errors.session,
  formType: 'Sign Up',
  usercred: {username: "", password: "", email: "", fname: "", lname: ""},
});

const mapDispatchToProps = dispatch => ({
  processForm: (user) => dispatch(signup(user)),
  clearErrors: (errors) => dispatch(receiveErrors(errors)),
});

export default connect(mapStateToProps, mapDispatchToProps)(SignupForm);
