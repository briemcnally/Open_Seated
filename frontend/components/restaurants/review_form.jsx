import React from 'react';
import { withRouter } from 'react-router-dom';

class ReviewForm extends React.Component {
  constructor(props){
    super(props);
    this.state = {restaurant_id: this.props.match.params.restaurantId,
                      rating: "",
                      food: "",
                      ambience: "",
                      service: "",
                      value: "",
                    };
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createReview(this.state).then(() =>
      this.props.history.push(`/restaurants/${this.props.match.params.restaurantId}`));
  }
  
  handleChange(field) {
    return(e) => {
      this.setState({[field]: e.target.value});
    };
  }

  renderErrors(){
    return(
      <ul>
        {this.props.errors.map((error, index) => (
          <li key={index}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  render() {
    const restaurantId = this.props.match.params.restaurantId;
    return(
      <div>
        <div className="review-form-header">
          <h1>{this.props.currentUser.fname} > Rate Your Dining Experience</h1>
        </div>
        <div className="rest-form-errors">
          {this.renderErrors()}
        </div>
        <div className="review-form-div">
          <form className="review-form-box" onSubmit={this.handleSubmit}>
            <div className="form-h2">
              <h2>{this.props.currentUser.fname}, how was your visit to {this.props.restaurants[restaurantId].name}?</h2>
            </div>
            <div className="five-star-rating">
            <label>We'd love to hear about how your experience went.</label>
              <input type="radio" name="rating" value="1" onChange={this.handleChange('rating')}></input>
              <input type="radio" name="rating" value="2" onChange={this.handleChange('rating')}></input>
              <input type="radio" name="rating" value="3" onChange={this.handleChange('rating')}></input>
              <input type="radio" name="rating" value="4" onChange={this.handleChange('rating')}></input>
              <input type="radio" name="rating" value="5" onChange={this.handleChange('rating')}></input>
            </div>
            <div>
              <h2 className="header-rate-dropdown">Rate your dining experience (required)</h2>
              <select onChange={this.handleChange('food')} >
                <option type="radio">Food</option>
                <option type="radio" value="1">Poor</option>
                <option type="radio" value="2">Fair</option>
                <option type="radio" value="3">Good</option>
                <option type="radio" value="4">Very Good</option>
                <option type="radio" value="5">Outstanding</option>
              </select>
              <select onChange={this.handleChange('service')}>
                <option type="radio">Service</option>
                <option type="radio" value="1">Poor</option>
                <option type="radio" value="2">Fair</option>
                <option type="radio" value="3">Good</option>
                <option type="radio" value="4">Very Good</option>
                <option type="radio" value="5">Outstanding</option>
              </select>
              <select onChange={this.handleChange('ambience')}>
                <option type="radio">Ambience</option>
                <option type="radio" value="1">Poor</option>
                <option type="radio" value="2">Fair</option>
                <option type="radio" value="3">Good</option>
                <option type="radio" value="4">Very Good</option>
                <option type="radio" value="5">Outstanding</option>
              </select>
              <select onChange={this.handleChange('value')}>
                <option type="radio">Value</option>
                <option type="radio" value="1">Poor</option>
                <option type="radio" value="2">Fair</option>
                <option type="radio" value="3">Good</option>
                <option type="radio" value="4">Very Good</option>>
                <option type="radio" value="5">Outstanding</option>
              </select>
            </div>
            <div>
              <h2 className="header-textarea">Write a review</h2>
              <div className="textarea-box">
                <textarea onChange={this.handleChange('body')}></textarea>
              </div>
            </div>
            <input  className="submit-review" type="submit"></input>
          </form>
        </div>
      </div>
    );
  }
}

export default withRouter(ReviewForm);
