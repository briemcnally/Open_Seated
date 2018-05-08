import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';
import  RestaurantSearchContainer from './restaurant_search_container';


class FeaturedAreas extends React.Component {
  constructor(props){
    super(props);
    this.handleNyClick = this.handleNyClick.bind(this);
    this.handleChicagoClick = this.handleChicagoClick.bind(this);
    this.handleLaClick = this.handleLaClick.bind(this);
    this.handleSfClick = this.handleSfClick.bind(this);
    this.handleMiamiClick = this.handleMiamiClick.bind(this);
    this.handleLasVegasClick = this.handleLasVegasClick.bind(this);
  }

  handleNyClick(e){
    e.preventDefault();
    this.props.searchRestaurants("New York").then(
      this.props.history.push('/restaurants/search'));
  }

  handleChicagoClick(e){
    e.preventDefault();
    this.props.searchRestaurants("Chicago").then(
      this.props.history.push('/restaurants/search'));
  }

  handleLaClick(e){
    e.preventDefault();
    this.props.searchRestaurants("Los Angeles").then(
      this.props.history.push('/restaurants/search'));
  }

  handleSfClick(e){
    e.preventDefault();
    this.props.searchRestaurants("San Francisco").then(
      this.props.history.push('/restaurants/search'));
  }

  handleMiamiClick(e){
    e.preventDefault();
    this.props.searchRestaurants("Miami").then(
      this.props.history.push('/restaurants/search'));
  }

  handleLasVegasClick(e){
    e.preventDefault();
    this.props.searchRestaurants("Las Vegas").then(
      this.props.history.push('/restaurants/search'));
  }

  render () {
    return (
      <div className="featured-areas-box">
        <div className="featured-areas-header">
        <h1>Featured Areas</h1>
        </div>
        <div>
          <table className="featured-areas">
            <tbody>
                <tr className="featured-row-1">
                  <th className="nyc" onClick={this.handleNyClick}>New York Area</th>
                  <th className="chicago" onClick={this.handleChicagoClick}>Chicago</th>
                  <th className="la" onClick={this.handleLaClick}>Los Angeles</th>
                </tr>
              <tr>
                <td className="sf" onClick={this.handleSfClick}>San Francisco</td>
                <td className="miami" onClick={this.handleMiamiClick}>Miami</td>
                <td className="los-vegas" onClick={this.handleLasVegasClick}>Las Vegas</td>
              </tr>
          </tbody>
          </table>
        </div>
      </div>
    );
  }
}

export default FeaturedAreas;
