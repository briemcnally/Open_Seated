import React from 'react';
import { Link } from 'react-router-dom';

const personalGreeting = (currentUser, logout) => (
  <nav className="greeting-nav">
    <h1 className="greeting">Hi, {currentUser.fname}</h1>
    <button onClick={logout}> Logout</button>
  </nav>
);

const sessionLinks = () => (
  <div className="session-links">
    <Link to="/signup" className="sign-up">Sign Up</Link>
    <Link to="/login" className="sign-in">Sign In</Link>
  </div>
);

const Greeting = ({ currentUser, logout }) => (
  currentUser ? personalGreeting(currentUser, logout) : sessionLinks()
);


export default Greeting;
