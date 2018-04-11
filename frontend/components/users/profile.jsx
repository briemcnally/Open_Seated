import React from 'react';

class Profile extends React.Component {
  constructor(props) {
    super(props);
  }


  render() {
    return (
      <div>
        <div className="successful-booking">
          <h1>You're reservation was successfully booked!</h1>
        </div>
      </div>
    );
  }
}


export default Profile;
