import { connect } from 'react-redux';
import { createRestaurant, receiveRestaurantErrors } from  '../../actions/restaurant_actions';
import RestaurantForm from './restaurant_form';

const mapStateToProps = (state, ownProps) => ({
  restaurant: {
    name: "",
    street_address: "",
    city: "",
    state: "",
    zip_code: "",
    num_seats: "",
    cuisine: [1, 2, 3, 4, 5, 6 , 7, 8],
    phone_number: "",
    img_url: "",
    description: "",
    neighborhood: "",
    price: ""},
  errors: state.errors.restaurants,
});

const mapDispatchToProps = dispatch => ({
  createRestaurant: restaurant => dispatch(createRestaurant(restaurant)),
  clearErrors: (errors) => dispatch(receiveRestaurantErrors(errors))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantForm);
