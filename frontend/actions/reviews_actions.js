import * as ReviewUtil from '../util/reviews_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';
export const RECEIVE_REVIEW_ERRORS ='RECEIVE_REVIEW_ERRORS';

export const receiveReview = ({ review }) => ({
  type: RECEIVE_REVIEW,
  review
});

export const receiveReviews = reviews => ({
  type: RECEIVE_REVIEWS,
  reviews
});

export const receiveReviewErrors = (errors) => ({
  type: RECEIVE_REVIEW_ERRORS,
  errors
});

export const createReview = formReview => dispatch => (
  ReviewUtil.createReview(formReview).then( review =>
    dispatch(receiveReview(review))
  ), err => (dispatch(receiveReviewErrors(err.responseJSON))
));

export const fetchReviews = restaurantId => dispatch => (
  ReviewUtil.fetchReviews(restaurantId).then( reviews =>
  dispatch(receiveReviews(reviews))
  )
);
