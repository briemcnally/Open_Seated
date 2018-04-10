import * as ReviewUtil from '../util/reviews_util';

export const RECEIVE_REVIEW = 'RECEIVE_REVIEW';

export const receiveReview = ({ review, averageRating, averageFoodRating,
averageServiceRating, averageAmbienceRating, averageValueRating  }) => ({
  type: RECEIVE_REVIEW,
  review,
  averageRating,
  averageFoodRating,
  averageServiceRating,
  averageAmbienceRating,
  averageValueRating
});

export const createReview = formReview => dispatch => (
  ReviewUtil.createReview(formReview).then( review =>
    dispatch(receiveReview(review))
  )
);
