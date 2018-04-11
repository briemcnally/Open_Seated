import * as ReviewUtil from '../util/reviews_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';
export const RECEIVE_REVIEWS = 'RECEIVE_REVIEWS';

export const receiveReview = ({ review }) => ({
  type: RECEIVE_REVIEW,
  review
});

export const receiveReviews = reviews => ({
  type: RECEIVE_REVIEWS,
  reviews
});

export const createReview = formReview => dispatch => (
  ReviewUtil.createReview(formReview).then( review =>
    dispatch(receiveReview(review))
  )
);

export const fetchReviews = restaurantId => dispatch => (
  ReviewUtil.fetchReviews(restaurantId).then( reviews =>
  dispatch(receiveReviews(reviews)))
);
