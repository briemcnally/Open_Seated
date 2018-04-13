import { connect } from 'react-redux';
import React from 'react';
import { Link } from 'react-router-dom';

class Footer extends React.Component {

  render () {
    return (
      <div className="footer-spread">
        <div className="footer-nav">

          <div className="left-footer-nav">
            <h1>OpenSeated<i class="far fa-copyright"></i></h1>
          </div>

          <div className="right-footer-nav">
            <div className="footer-links">
              <a href="https://www.linkedin.com/in/brienne-mcnally/">
                <i id="icon" className="fab fa-linkedin"></i>
              </a>

              <a href="https://github.com/briemcnally">
                <i id="icon" className="fab fa-github-square"></i>
              </a>
              <a href="https://www.facebook.com/OpenTable/?ref=br_rs">
                <i id="icon" className="fab fa-facebook-square"></i>
              </a>
            </div>
          </div>

        </div>
      </div>
    );
  }
}

export default Footer;
