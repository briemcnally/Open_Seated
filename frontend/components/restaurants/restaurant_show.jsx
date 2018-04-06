import React from 'react';
import { Link } from 'react-router-dom';

class RestaurantShow extends React.Component {
  constructor(props){
    super(props);
    this.state = this.props.restaurant;
  }

  componentDidMount(){
    this.props.requestRestaurant(this.state.id);
  }

  render(){

    return (
      <div>
        <h2>{this.state.name}</h2>
        <p>{this.state.description}</p>
        <ul>
          <li>{this.state.cuisine}</li>
          <li>{this.state.phone_number}</li>
          <li>
            {this.state.street_address}, {this.state.city},
            {this.state.state}, {this.state.zip_code}
          </li>
        </ul>

      </div>
    );
  }
}

export default RestaurantShow;
