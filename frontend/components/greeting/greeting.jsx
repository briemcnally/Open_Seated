import React from 'react';
import { Link } from 'react-router-dom';

const personalGreeting = (currentUser, logout) => (
  <div className="right-nav">
    <div className="greeting-nav">
      <Link to={`/users/${currentUser.id}`}><h1 className="greeting">Hi, {currentUser.fname}</h1></Link>
      <button onClick={logout}> Logout</button>
    </div>
  </div>
);

const sessionLinks = () => (
  <div className="right-nav">
    <Link to="/signup" className="sign-up">Sign Up</Link>
    <Link to="/login" className="sign-in">Sign In</Link>
  </div>
);

const Greeting = ({ currentUser, logout }) => (
  <div className="nav-spread">
    <main className="main-nav">
      <Link to="/" className="home-link">
      <div className="left-nav">
          <div className='logo-image-container'>
            <div className='logo-image'></div>
          </div>
          <h2 className="logo-name">OpenSeated</h2>
      </div>
    </Link>
      <div className="middle-nav">
        <h2 className="current-location">
          San Francisco Bay Area
        </h2>
      </div>
      {
        currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
      }
    </main>
  </div>
);


export default Greeting;
