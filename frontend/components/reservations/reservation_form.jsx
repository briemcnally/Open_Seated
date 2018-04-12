import React from 'react';
import { Link } from 'react-router-dom';


class ReservationForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props.location;
    this.handleSubmit = this.handleSubmit.bind(this);
  }


  handleSubmit(e) {
    e.preventDefault();

    const newReservation = { user_id: this.props.currentUser.id,
                          restaurant_id: this.state.restaurant.id,
                          date: this.state.reservation.date,
                          time: this.state.reservation.time,
                          num_guests: this.state.reservation.num_guests,
                          points: 100 };
    this.props.createReservation(newReservation).then(
      this.props.history.push(`/reservations/confirmation`));
  }

  update(field) {
    return (e) => {
      this.setState({[field]: e.target.value});
    };
  }

  render() {
    const styles={margin: '10px', lineHeight: 2 };
    const header = (<h1>You're Almost Done!</h1>);
    return (
      <div>
        <div className="page-header-content">
          <h1>You're Almost Done!</h1>
        </div>
        <div className="confirm-res-details">
          <img className= "rest-image" src={this.state.restaurant.imgUrl}></img>
          <div className="res-confirm">
            <h1>{this.state.restaurant.name}</h1>
            <div className="details">
              <label>Guests
                <div>{this.state.reservation.num_guests}</div>
              </label>
              <label>Date
                <div>{this.state.reservation.date}</div>
              </label>
              <label>Time
                <div>{this.state.reservation.time}</div>
              </label>
            </div>
          </div>
        </div>
        <div className="row">
          <div className="current-diner">
            <p>{this.props.currentUser.fname + " " + this.props.currentUser.lname}</p>
          </div>
          <form>
            <div className="row1">
              <input type="text"
                    placeholder="Phone Number"
                    style={styles}></input>
              <input type="text"
                      value={this.props.currentUser.email}
                      onChange={this.update('email')}
                      style={styles}></input>
            </div>
            <div className="row2">
              <select>
                <option>Select an Occasion (optional)</option>
                <option>Birthday</option>
                <option>Anniversary</option>
                <option>Date Night</option>
                <option>Business Meal</option>
                <option>Celebration</option>
              </select>
              <textarea placeholder="Add a special request (optional)">
              </textarea>
            </div>
            <div className="complete-reservation-button">
            <Link to={{pathname:`reservations/confirm`,
              reservation: this.state.reservation, restaurant: this.state.restaurant,
              currentUser: this.props.currentUser}}>
            <button className="res-confirm-button" onClick={this.handleSubmit}>Complete Reservation</button>
          </Link>
          </div>
          </form>

        </div>
      </div>
    );
  }
}


export default ReservationForm;
