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
    return (
      <div className="review-sub-box">
        <div className="review-header">
          <h1>What People Are Saying</h1>
          <h2>Overall ratings and reviews</h2>
          <p>Reviews can only be made by diners who have eaten at this restaurant</p>
          <p>{this.props.restaurant.average_rating} based on recent ratings</p>
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
