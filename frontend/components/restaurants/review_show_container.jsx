import { connect } from 'react-redux';
import { createReview, fetchReviews } from '../../actions/reviews_actions';
import ReviewShow from './review_show';
import { withRouter } from 'react-router-dom';

const mapStateToProps = (state, ownProps) => ({
  restaurantId: ownProps.match.params.restaurantId,
  reviews: Object.values(state.entities.reviews),
  restaurant: Object.values(state.entities.restaurants)
});

const mapDispatchToProps = dispatch => ({
  fetchReviews: restaurantId => dispatch(fetchReviews(restaurantId))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ReviewShow));
