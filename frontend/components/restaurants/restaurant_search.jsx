import React from 'react';
import RestaurantIndexItem from './restaurant_index_item';
import { Link } from 'react-router-dom';

class RestaurantSearch extends React.Component {
  render() {
    return (
      <div>
        <ul className="rest-index-list">
          {
            this.props.restaurants.map(restaurant =>
              <RestaurantIndexItem
                restaurant={restaurant}
                key={restaurant.id}
              />
            )
          }
        </ul>
        <div className="form-link">
          <Link className="create-restaurant" to={`/restaurants/new`}>Add a Restaurant</Link>
        </div>
      </div>
    );
  }

}

export default RestaurantSearch;
