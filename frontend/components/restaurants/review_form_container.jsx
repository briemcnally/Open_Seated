import { connect } from 'react-redux';
import { createReview, receiveReviewErrors } from '../../actions/reviews_actions';
import ReviewForm from './review_form';

const mapStateToProps = (state, ownProps) => ({
  restaurants: state.entities.restaurants,
  currentUser: state.session.currentUser,
  state: state,
  errors: state.errors.reviews
});

const mapDispatchToProps = dispatch => ({
  createReview: review => dispatch(createReview(review)),
  clearErrors: (errors) => dispatch(receiveReviewErrors(errors))
});

export default connect(mapStateToProps, mapDispatchToProps)(ReviewForm);
