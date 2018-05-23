import React from 'react';

class Confirmation extends React.Component {
  constructor(props) {
    super(props);
  }


  render() {
    return (
      <div>
        <div className="successful-booking">
          <h1>Your reservation was successfully booked!</h1>
        </div>
      </div>
    );
  }
}


export default Confirmation;
