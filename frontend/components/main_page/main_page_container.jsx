import React from 'react';
import { connect } from 'react-redux';
import MainPage from './main_page';
import { requestRestaurants, searchRestaurants} from '../../actions/restaurant_actions';


const mapStateToProps = (state, ownProps) => ({
});

const mapDispatchToProps = (dispatch, ownProps) => ({
});

export default connect(mapStateToProps, mapDispatchToProps)(MainPage);
