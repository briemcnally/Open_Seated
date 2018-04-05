import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';


class MainPage extends React.Component {

  render () {
    return (
    <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_scale,w_1300/v1522954506/adult-beard-blur-573562.jpg`}></img>
    );
  }
}


export default MainPage;
