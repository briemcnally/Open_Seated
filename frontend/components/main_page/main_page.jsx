import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';
import  RestaurantSearchContainer from './restaurant_search_container';
import FeaturedRestaurantContainer from './featured_restaurant_container';
import FeaturedAreasContainer from './featured_areas_container';

class MainPage extends React.Component {
  constructor(props){
    super(props);
  }


  render () {
    return (
    <div>
        <img className="splash" src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_fill,h_550,w_1200/v1522954506/adult-beard-blur-573562.jpg`}></img>
        <RestaurantSearchContainer />
        <FeaturedRestaurantContainer />
        <FeaturedAreasContainer />
    </div>
    );
  }
}


export default MainPage;
