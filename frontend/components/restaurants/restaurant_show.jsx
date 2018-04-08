import React from 'react';
import { Link } from 'react-router-dom';

class RestaurantShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount(){
    this.props.requestRestaurant(this.props.match.params.restaurantId);
  }

  componentWillReceiveProps(nextProps) {
  if (this.props.match.params.restaurantId !== nextProps.match.params.restaurantId) {
    this.props.requestRestaurant(nextProps.match.params.restaurantId);
  }
}

  render(){
    if (this.props.restaurant === undefined) return "Loading...";
    const { restaurant } = this.props;
    return (
      <div className="rest-show">
        <div className="rest-header-box">
          <h1 className="rest-name">{restaurant.name}</h1>
        </div>
          <p>{restaurant.description}</p>
          <ul className="restaurant-details">
            <li>{restaurant.cuisine}</li>
            <li>{restaurant.price}</li>
            <li>{restaurant.phone_number}</li>
            <li>
              {restaurant.street_address}, {restaurant.city},
              {restaurant.state}, {restaurant.zip_code}
            </li>
          </ul>

        </div>
    );
  }
}

export default RestaurantShow;
