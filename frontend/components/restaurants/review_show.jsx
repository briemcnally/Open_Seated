import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewShow extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      rating: 5,
      body: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
  }

  update(field) {
    return e => this.setState({[field]: e.currentTarget.value});
  }

  render() {
    return(
      <div>
        <div className="review-header">
          <h1>What People Are Saying</h1>
          <h2>Overall ratings and reviews</h2>
          <p>Reviews can only be made by diners who have eaten at this restaurant</p>
          <p>{this.restaurant.averageRating} based on recent ratings</p>
          <ul>
            <li>{this.restaurant.averageFoodRating} Food</li>
            <li>{this.restaurant.averageServiceRating} Service</li>
            <li>{this.restaurant.averageAmbienceRating} Ambience</li>
            <li>{this.restaurant.averageValueRating} Value</li>
          </ul>
        </div>
      </div>
    );
  }
}

export default withRouter(ReviewShow);
