import React from 'react';
import { Link } from 'react-router-dom';
import ReservationSearchContainer from '../reservations/reservation_search_container';
import ReviewFormContainer from './review_form_container';
import { ProtectedRoute } from '../../util/route_util';
import ReviewShowContainer from './review_show_container';

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
                <div>
                  <i class="fas fa-utensils"></i>
                  <div className="rest-detail-columns">
                    <h3>Cuisine:</h3>
                    <li>{restaurant.cuisine}</li>
                  </div>
                </div>
                <div>
                  <i class="far fa-money-bill-alt"></i>
                  <div className="rest-detail-columns">
                    <h3>Price:</h3>
                    <li>{restaurant.price}</li>
                  </div>
                </div>
                <div>
                  <i class="fas fa-phone"></i>
                  <div className="rest-detail-columns">
                    <h3>Phone Number:</h3>
                    <li>{restaurant.phoneNumber}</li>
                  </div>
                </div>
                <div>
                  <i class="fas fa-location-arrow"></i>
                  <div className="rest-detail-columns">
                    <h3>Address:</h3>
                    <li>
                      {restaurant.streetAddress + ", " + restaurant.city + ", " +restaurant.state+ ", " + restaurant.zipCode}
                    </li>
                  </div>
                </div>
                <div>
                  <i class="far fa-building"></i>
                  <div className="rest-detail-columns">
                    <h3>Neighborhood:</h3>
                    <li>{restaurant.neighborhood}</li>
                  </div>
                </div>
              </ul>
            </div>
          </div>
        <div className="review-status">
          <div className="review-redirect">
            <Link to={{pathname:`/restaurants/${this.props.restaurant.id}/review/new`}} className="create-review-button">
              Create a Review
            </Link>
          </div>
        </div>
        <div className="review-show-cont">
          <ReviewShowContainer />
        </div>
      </div>
    );
  }
}

export default RestaurantShow;
