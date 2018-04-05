import React from 'react';
import { Link } from 'react-router-dom';

const personalGreeting = (currentUser, logout) => (
  <div className="right-nav">
    <div className="greeting-nav">
      <h1 className="greeting">Hi, {currentUser.fname}</h1>
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
  <main className="main-nav">
    <div className="left-nav">
      <div className='logo-image-container'>
        <div className='logo-image'></div>
      </div>
      <h2 className="logo-name">OpenSeated</h2>
    </div>
    <div className="middle-nav">
      <h2 className="current-location">
        San Francisco Bay Area
      </h2>
    </div>
    {
      currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
    }
  </main>
);


export default Greeting;
