import React from 'react';
import { Route, Switch, withRouter, Redirect, Link, HashRouter} from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';


import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';

const App = () => (
  <main className="main-container">
    <GreetingContainer />
    <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_scale,w_1300/v1522954506/adult-beard-blur-573562.jpg`}></img>
    <Switch>
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <AuthRoute exact path="/login" component={LoginFormContainer} />
    </Switch>
  </main>
);

export default App;
