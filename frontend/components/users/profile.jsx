import React from 'react';

class Profile extends React.Component {
  constructor(props) {
    super(props);
    this.state = this.props;
  }


  render() {
    return (
      <div>
        <div>
          <h1>{this.state.currentUser.fname + " " + this.state.currentUser.lname}</h1>
        </div>
      </div>
    );
  }
}


export default Profile;
