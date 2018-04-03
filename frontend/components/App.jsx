import React from 'react';
import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { Route } from 'react-router-dom';

const App = () => (
  <div>
    <h1>OpenSeated</h1>
    <GreetingContainer />
    <Route path="/login" component={LoginFormContainer} />
    <br />
    <Route path="/signup" component={SignupFormContainer} />
  </div>
);

export default App;
