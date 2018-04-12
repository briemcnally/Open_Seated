import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';
import { CloudinaryContext, Transformation, Image } from 'cloudinary-react';
import  RestaurantSearchContainer from './restaurant_search_container';


class MainPage extends React.Component {

  render () {
    return (
    <div>
        <img className="splash" src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_fill,h_550,w_1200/v1522954506/adult-beard-blur-573562.jpg`}></img>
        <RestaurantSearchContainer />

      <div className="top-cuisines-box">
        <div className="top-cuisine-header">
        <h1>Top Cuisines Near San Francisco</h1>
        </div>
        <div>
          <table>
            <tbody>
            <tr>
              <th>
                <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1522968733/tacos-1904921_640.jpg`}></img>
              </th>
              <th>
                <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1522968951/15862329469_78f002d81e_m.jpg`}></img>
              </th>
              <th>
                <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1522968090/pexels-photo-213939.jpg`}></img>
              </th>
              <th>
                <img src={`http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1522967620/pexels-photo-955137.jpg`}></img>
              </th>
            </tr>
          </tbody>
          </table>
        </div>
      </div>

      <div className="featured-areas-box">
        <div className="featured-areas-header">
        <h1>Features Areas</h1>
        </div>
        <div>
          <table className="featured-areas">
            <tbody>
                <tr className="featured-row-1">
                  <th className="nyc">New York Area</th>
                  <th className="chicago">Chicago</th>
                  <th className="la">Los Angeles</th>
                </tr>
              <tr>
                <td className="sf">San Francisco</td>
                <td className="miami">Miami</td>
                <td className="los-vegas">Las Vegas</td>
              </tr>
          </tbody>
          </table>
        </div>
      </div>
    </div>
    );
  }
}


export default MainPage;
