import React from 'react';
import { Route, Switch, withRouter, Redirect, Link, HashRouter} from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';


import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import MainPage from './main_page/main_page';

const App = () => (
  <main className="main-container">
    <GreetingContainer />
    <Switch>
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <AuthRoute exact path="/login" component={LoginFormContainer} />
      <AuthRoute exact path="/" component={MainPage} />
    </Switch>
  </main>
);

export default App;
