import React from 'react';
import { withRouter } from 'react-router-dom';
import ReviewShowItem from './review_show_item';


class ReviewShow extends React.Component {
  constructor(props){
    super(props);
  }

  componentDidMount(){
    this.props.fetchReviews(this.props.match.params.restaurantId);
  }

  componentWillReceiveProps( nextProps ){
    if (this.props.match.params.restaurantId !== nextProps.match.params.restaurantId) {
      this.props.fetchReviews(this.props.match.params.restaurantId);
    }
  }

  render() {
    if (this.props.reviews === undefined) return "Loading...";
    const restaurantId = this.props.match.params.restaurantId;
    const serviceRating = this.props.restaurant.averageServiceRating.slice(0, 3);
    const averageRating = this.props.restaurant.averageRating.slice(0, 3);
    const averageFoodRating = this.props.restaurant.averageFoodRating.slice(0, 3);
    const averageAmbienceRating = this.props.restaurant.averageAmbienceRating.slice(0, 3);
    const averageValueRating = this.props.restaurant.averageValueRating.slice(0, 3);
    return (
      <div className="review-sub-box">
        <div className="review-header">
          <h1>What People Are Saying</h1>
          <h2>Overall ratings and reviews</h2>
          <p>Reviews can only be made by diners who have eaten at this restaurant</p>
          <div className="overall-rating"><div className="rating-num">{averageRating}</div> based on recent ratings</div>
          <div className="review-specifics">
            <div className="rating">
              <div className="rating-num">{averageFoodRating}</div>
              <div>Food</div>
            </div>
            <div className="center-rating">
              <div className="rating-num">{serviceRating}</div>
              <div>Service</div>
            </div>
            <div className="center-rating">
              <div className="rating-num">{averageAmbienceRating}</div>
              <div>Ambience</div>
            </div>
            <div className="end-rating">
              <div className="rating-num">{averageValueRating}</div>
              <div>Value</div>
            </div>
          </div>
        </div>
        <ul className="rest-index-list">
          {
            this.props.reviews.map(review =>
              <ReviewShowItem
                review={review}
                key={review.id}
              />
            )
          }
        </ul>
      </div>
    );
  }

}


export default ReviewShow;
