import React from 'react';
import { Route, Switch, withRouter, Redirect, Link, HashRouter} from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';


import GreetingContainer from './greeting/greeting_container';
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import RestaurantIndexContainer from './restaurants/restaurant_index_container';
import RestaurantShowContainer from './restaurants/restaurant_show_container';
import CreateRestaurantFormContainer  from './restaurants/create_restaurant_form_container';
import ReservationSearchContainer from './reservations/reservation_search_container';
import ReservationFormContainer from './reservations/reservation_form_container';
import MainPage from './main_page/main_page';
import RestaurantSearchContainer from './restaurants/restaurant_search_container';
import ProfileContainer from './users/profile_container';
import ReviewFormContainer from './restaurants/review_form_container';
import ConfirmationContainer from './users/confirmation_container'

const App = () => (
  <main className="main-container">
    <GreetingContainer />
    <Switch>
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <AuthRoute exact path="/login" component={LoginFormContainer} />
      <ProtectedRoute exact path="/reservations/confirmation" component={ConfirmationContainer} />
      <ProtectedRoute exact path="/restaurants/new" component={CreateRestaurantFormContainer} />
      <Route exact path="/restaurants/search" component={RestaurantSearchContainer} />
      <ProtectedRoute exact path ="/restaurants/:restaurantId/review/new" component={ReviewFormContainer}/>
      <ProtectedRoute exact path="/restaurants/:restaurantId/reservation/new" component={ReservationFormContainer} />
      <Route exact path="/restaurants/:restaurantId" component={RestaurantShowContainer} />
      <Route exact path="/restaurants" component={RestaurantIndexContainer} />
      <Route exact path="/reservations" component={ReservationSearchContainer}/>
      <Route exact path='/users/:userId' component={ProfileContainer} />
      <Route path="/" component={MainPage}/>
    </Switch>
  </main>
);

export default App;
