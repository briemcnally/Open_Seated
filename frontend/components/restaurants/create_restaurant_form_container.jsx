import { connect } from 'react-redux';
import { createRestaurant } from  '../../actions/restaurant_actions';
import RestaurantForm from './restaurant_form';

const mapStateToProps = (state, ownProps) => {
  const restaurant = {
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
    price: ""
  };

  return { restaurant };
};

const mapDispatchToProps = dispatch => ({
  createRestaurant: restaurant => dispatch(createRestaurant(restaurant))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(RestaurantForm);
