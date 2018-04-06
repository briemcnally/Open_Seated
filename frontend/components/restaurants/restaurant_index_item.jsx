import React from 'react';
import { Link } from 'react-router-dom';

const RestaurantIndexItem = ({restaurant}) => (
  <li className="restaurant-box">
    <Link className="rest-index-link" to={`/restaurants/${restaurant.id}`}>{restaurant.name}</Link>
    <ul className="restaurant-details">
        <li>{restaurant.price}</li>
        <li>{restaurant.cuisine}</li>
        <div className="restaurant-location">
          <li>{restaurant.city}</li>
          <li>{restaurant.neighborhood}</li>
        </div>
    </ul>
  </li>
);

export default RestaurantIndexItem;
