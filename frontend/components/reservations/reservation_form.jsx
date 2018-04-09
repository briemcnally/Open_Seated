import React from 'react';

class ReservationForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
  }



  handleSubmit(e) {
    e.preventDefault;
  }


  render() {
    return (
      <div>
        <div className="page-header-content">
          <h1>Almost Done!</h1>
        </div>
        <div className="row">
          <div className="current-diner">
            <p>{this.props.currentUser.fname + " " + this.props.currentUser.lname}</p>
          </div>
          <form onClick={this.handleSubmit}>
            <div className="row1">
              <input type="text" placeholder="Phone Number"></input>
              <input type="text" placeholder="Email"></input>
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
            <button className="res-confirm-button" onClick={this.handleSubmit}>Complete Reservation</button>
          </form>
        </div>
      </div>
    );
  }
}


export default ReservationForm;
