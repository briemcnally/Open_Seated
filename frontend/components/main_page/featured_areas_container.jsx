import React from 'react';
import { connect } from 'react-redux';
import FeaturedAreas from './featured_areas';
import { requestRestaurants, searchRestaurants} from '../../actions/restaurant_actions';
import { withRouter } from 'react-router-dom';



const mapStateToProps = (state, ownProps) => ({
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  searchRestaurants: searchTerm => dispatch(searchRestaurants(searchTerm))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(FeaturedAreas));
