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

  componentWillUnmount() {
    this.props.clearErrors([]);
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


  render () {
    return (
      <div>
        <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_scale,w_1200/v1523130044/pexels-photo-791810_1.jpg`}></img>
        <div className="add-restaurant-form">
          <div className="new-rest-header">
            <h3>Add your restaurant to OpenSeated</h3>
          </div>
          <div className="rest-form-errors">
            {this.renderErrors()}
          </div>
          <form className="new-rest-form" onSubmit={this.handleSubmit}>
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
                placeholder="Number of Open (per day)" />
            </label>

            <label>
              <input
                type="text"
                value={this.state.phone_number}
                onChange={this.update('phone_number')}
                placeholder="Phone Number: (xxx) xxx-xxxx" />
            </label>

            <label>
              <input
                type="text"
                value={this.state.imgUrl}
                onChange={this.update('img_url')}
                placeholder="Image URL (optional)" />
            </label>

            <div className="new-rest-description">
              <textarea
                value={this.state.description}
                placeholder="Description"
                onChange={this.update('description')} />
            </div>

            <div className="cusine-dropdown">
              <select onChange={this.update('cuisine')}>
                <option>Cuisine</option>
                <option value="American">American</option>
                <option value="Chinese">Chinese</option>
                <option value="French">French</option>
                <option value="Italian">Italian</option>
                <option value="Japanese">Japanese</option>
                <option value="Mediterranean">Mediterranean</option>
                <option value="Mexican">Mexican</option>
                <option value="Seafood">Seafood</option>
                <option value="Vietnamese">Vietnamese</option>
                <option value="Thai">Thai</option>
              </select>
            </div>

            <div className="price-dropdown">
              <select onChange={this.update('price')}>
                <option>Price</option>
                <option value="2"> $30 and under </option>
                <option value="3"> $31 to $50 </option>
                <option value="4"> $50 and over </option>
              </select>
            </div>

            <div className="add-restaurant">
              <input className="add-restaurant-button" type="submit" value="Add Restaurant" />
            </div>

          </form>
        </div>
      </div>
    );
  }
}

export default withRouter(RestaurantForm);
