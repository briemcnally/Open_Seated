import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';
import  RestaurantSearchContainer from './restaurant_search_container';


class MainPage extends React.Component {

  render () {
    return (
    <div>
      <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_scale,w_1300/v1522954506/adult-beard-blur-573562.jpg`}></img>
      <RestaurantSearchContainer />
    </div>
    );
  }
}


export default MainPage;
