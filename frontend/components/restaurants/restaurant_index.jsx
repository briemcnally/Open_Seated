import React from 'react';
import RestaurantIndexItem from './restaurant_index_item';

class RestaurantIndex extends React.Component {

  componentDidMount(){
    this.props.requestRestaurants();
  }

  render() {

    return (
      <div>
        <ul>
          {
            this.props.restaurants.map(restaurant =>
              <RestaurantIndexItem
                restaurant={restaurant}
                key={restaurant.id}
              />
            )
          }
        </ul>
        <Link to={`/restaurants/new`}>Add a Restaurant</Link>
      </div>
    );
  }

}
