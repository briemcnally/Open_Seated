import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';
import  RestaurantSearchContainer from './restaurant_search_container';


class FeaturedRest extends React.Component {
  constructor(props){
    super(props);
    this.handleMexClick = this.handleMexClick.bind(this);
    this.handleItalianClick = this.handleItalianClick.bind(this);
    this.handleJapaneseClick = this.handleJapaneseClick.bind(this);
    this.handleChineseClick = this.handleChineseClick.bind(this);
  }

  handleMexClick(e){
    e.preventDefault();
    this.props.searchRestaurants("mexican").then(
      this.props.history.push('/restaurants/search'));
  }

  handleItalianClick(e){
    e.preventDefault();
    this.props.searchRestaurants("italian").then(
      this.props.history.push('/restaurants/search'));
  }

  handleJapaneseClick(e){
    e.preventDefault();
    this.props.searchRestaurants("japanese").then(
      this.props.history.push('/restaurants/search'));
  }

  handleChineseClick(e){
    e.preventDefault();
    this.props.searchRestaurants("chinese").then(
      this.props.history.push('/restaurants/search'));
  }

  render () {
    return (
      <div className="top-cuisines-box">
        <div className="top-cuisine-header">
          <h1>Top Cuisine Near San Francisco</h1>
        </div>
      <div className="feat-rest-div">
        <ul className="featured-restaurants">
          <div className="rest-li">
            <li className="best-mexican" onClick={this.handleMexClick}>
              <div className="rest-li-text">
                  Best Mexican Restaurants Around You
              </div>
            </li>
          </div>

          <div className="rest-li">
            <li className="best-italian" onClick={this.handleItalianClick}>
              <div className="rest-li-text">
                Best Italian Restaurants Around You
              </div>
            </li>
          </div>
            <div className="rest-li">
            <li className="best-japanese"onClick={this.handleJapaneseClick}>
              <div className="rest-li-text">
              Best Japanese Restaurants Around You
            </div>
            </li>
          </div>
            <div className="rest-li">
            <li className="best-chinese" onClick={this.handleChineseClick}>
              <div className="rest-li-text">
              Best Chinese Restaurants Around You
            </div>
            </li>
          </div>
          </ul>
      </div>
      </div>
    );
  }
}

export default FeaturedRest;
