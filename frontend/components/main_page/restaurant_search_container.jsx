import React from 'react';
import { connect } from 'react-redux';
import RestaurantSearch from './restaurant_search';
import { searchRestaurants} from '../../actions/restaurant_actions';


const mapStateToProps = (state, ownProps) => ({

});

const mapDispatchToProps = (dispatch, ownProps) => ({
  searchRestaurants: searchTerm => dispatch(searchRestaurants(searchTerm))
});

export default connect(mapStateToProps, mapDispatchToProps)(RestaurantSearch);
