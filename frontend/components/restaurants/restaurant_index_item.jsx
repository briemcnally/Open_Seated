import React from 'react';
import { Link } from 'react-router-dom';

const RestaurantIndexItem = ({restaurant}) => (
  <li className="restaurant-box">
    <div className="left-row-photo">
      {console.log(restaurant)}
      <img className= "rest-image" src={restaurant.imgUrl}></img>
    </div>
    <div className="right-row-info">
    <Link to={`/restaurants/${restaurant.id}`}
          className="rest-index-link">
          {restaurant.name}
    </Link>
    <ul className="restaurant-details">
        <li>{restaurant.price}</li>
        <li>{restaurant.cuisine}</li>
        <div className="restaurant-location">
          <li>{restaurant.city}</li>
          <li>{restaurant.neighborhood}</li>
        </div>
    </ul>
    </div>
  </li>
);

export default RestaurantIndexItem;
