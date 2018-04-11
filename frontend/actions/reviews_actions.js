import * as ReviewUtil from '../util/reviews_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';

export const receiveReview = ({ review }) => ({
  type: RECEIVE_REVIEW,
  review
});

export const createReview = formReview => dispatch => (
  ReviewUtil.createReview(formReview).then( review =>
    dispatch(receiveReview(review))
  )
);
