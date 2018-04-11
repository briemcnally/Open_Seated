import React from 'react';
import { Link } from 'react-router-dom';
import ReservationSearchContainer from '../reservations/reservation_search_container';
import ReviewFormContainer from './review_form_container';
import { ProtectedRoute } from '../../util/route_util';

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
      <div>
        <div>
          <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/v1523130044/pexels-photo-791810_1.jpg`}></img>
        </div>
        <div className="rest-show">
          <div className="rest-header-box">
            <h1 className="rest-name">{restaurant.name}</h1>
          </div>
          <div className="res-search-bar">
            <ReservationSearchContainer restaurant={this.props.restaurant}/>
          </div>
            <div className="rest-info-box">
              <p>{restaurant.description}</p>
              <ul className="restaurant-details">
                <li>Cuisine: {restaurant.cuisine}</li>
                <li>Price: {restaurant.price}</li>
                <li>Phone Number:{restaurant.phone_number}</li>
                <li>Address:
                  {restaurant.street_address}, {restaurant.city},
                  {restaurant.state}, {restaurant.zip_code}
                </li>
                <li>Neighborhood: {restaurant.neighborhood}</li>
              </ul>
            </div>
          </div>
        <div className="review-form">
          <Link to={{pathname:`/restaurants/${this.props.restaurant.id}/review/new`}} className="res-search-button">
            Create a Review
          </Link>
        </div>
      </div>
    );
  }
}

export default RestaurantShow;
