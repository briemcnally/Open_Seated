import React from 'react';
import { withRouter } from 'react-router-dom';

class RestaurantForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = this.props.restaurant;
  }

  update(field) {
    return (e) => {
      this.setState({[field]: e.target.value});
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createRestaurant(this.state).then(() =>
      this.props.history.push('/'));
  }

  render () {
    return (
      <div>
        <h3>Add your restaurant to OpenSeated</h3>
        <form onSubmit={this.handleSubmit}>
          <label>
            <input
              type="text"
              value={this.state.name}
              onChange={this.update('name')}
              placeholder="Name" />
          </label>

          <label>
            <input
              type="text"
              value={this.state.street_address}
              onChange={this.update('street_address')}
              placeholder="Street Address" />
          </label>

          <label>
            <input
              type="text"
              value={this.state.city}
              onChange={this.update('city')}
              placeholder="City" />
          </label>

          <label>
            <input
              type="text"
              value={this.state.state}
              onChange={this.update('state')}
              placeholder="State" />
          </label>

          <label>
            <input
              type="text"
              value={this.state.zip_code}
              onChange={this.update('zip_code')}
              placeholder="Zip Code" />
          </label>

          <label>
            <input
              type="text"
              value={this.state.neighborhood}
              onChange={this.update('neighborhood')}
              placeholder="Neighborhood" />
          </label>

          <label>
            <input
              type="text"
              value={this.state.num_seats}
              onChange={this.update('num_seats')}
              placeholder="Number of Open Seats" />
          </label>

          <select>
            <option value=""
          </select>

          <label>
            <input
              type="text"
              value={this.state.phone_number}
              onChange={this.update('phone_number')}
              placeholder="Phone Number" />
          </label>

          <label>
            <textarea
              value={this.state.description}
              onChange={this.update('description')} />
          </label>

          <input type="submit" value="Add Restaurant" />
        </form>
      </div>
    );
  }
}

export default withRouter(RestaurantForm);
