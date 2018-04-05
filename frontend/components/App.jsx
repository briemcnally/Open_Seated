import React from 'react';
import { Route, Switch} from 'react-router-dom';
import { AuthRoute } from '../util/route_util';
import { withRouter } from 'react-router-dom';

import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';

const App = () => (
  <div>
    <header className="header">
      <nav className="header-nav">
        <div className='header-logo-container'>

        <div className='header-logo-image-container'>
          <div className='header-logo-image'>
          </div>
        </div>
        <div className='header-logo'>
          <h1 className="">OpenSeated</h1>
        </div>
        </div>
        <div className="current-city">
          <h3>San Francisco Bay Area</h3>
        </div>
        <GreetingContainer />
      </nav>
    </header>

    <Switch>
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <AuthRoute exact path="/login" component={LoginFormContainer} />
    </Switch>
  </div>
);

export default App;
