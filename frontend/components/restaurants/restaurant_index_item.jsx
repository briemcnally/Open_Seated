import React from 'react';
import { Link } from 'react-router-dom';

const RestaurantIndexItem = ({restaurant}) => (
  <li>
    <Link to={`/restaurants/${restaurant.id}`}>{restaurant.name}</Link>
    <div>{restaurant.cuisine}</div>
    <div>{restaurant.city}</div>
  </li>
);

export default RestaurantIndexItem;
