import React from 'react';

class Profile extends React.Component {
  constructor(props) {
    super(props);
    debugger
    this.state = this.props;
    const currentUser = this.state.currentUser.id;
  }


  render() {
    return (
      <div>
        <div className="user-title">
          <h1>{this.state.currentUser.fname + " " + this.state.currentUser.lname}</h1>
        </div>
        <div className="reservation-list">
          <h1>Reservations</h1>
          <div>
            <ul>
              // <h2>{this.state.currentUser.reservations}</h2>
            </ul>
          </div>
        </div>
      </div>
    );
  }
}


export default Profile;
