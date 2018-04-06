import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';

class LoginForm extends React.Component {

  constructor(props) {
    super(props);
    this.state = this.props.usercred;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleDemo = this.handleDemo.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
  }

  componentWillUnmount() {
    this.props.clearErrors([]);
  }

  handleSubmit(e) {
    e.preventDefault();
    const user = Object.assign({}, this.state);
    this.props.processForm(user);
  }

  renderErrors(){
    return(
      <ul>
        {this.props.errors.map((error, index) => (
          <li key={index}>
            {error}
          </li>
        ))}
      </ul>
    );
  }

  handleDemo(event){
    event.preventDefault();
    this.state = {username: "GuestDemo", password: "guestdemo"};
    const guest = Object.assign({}, this.state);
    this.props.processForm(guest);
  }

  render() {
      return (
        <div className="form1">
          {this.renderErrors()}
          <form onSubmit={this.handleSubmit} className="session-form">
            <h3>Please Sign In</h3>
            <fieldset className="session-form-inputs">
              <label>
                <input className="session-input"
                  type="text"
                  value={this.state.username}
                  onChange={this.update('username')}
                  className="login-input"
                  placeholder="Username"
                />
              </label>
              <label>
                <input className="session-input"
                  type="password"
                  value={this.state.password}
                  onChange={this.update('password')}
                  className="login-input"
                  placeholder="Password"
                />
              </label>
              <div className="session-button">
                <input type="submit" value={this.props.formType} />
              </div>
              <h2 className="redirect-new-user">
                New to OpenSeated?
                <Link to="/signup"> Create an account </Link>
              </h2>

              <h2 className="redirect-new-user">
                Want to test out our site?
                <button onClick={this.handleDemo}> Demo Login </button>
              </h2>
            </fieldset>
          </form>
        </div>
      );
    }
  }

export default withRouter(LoginForm);
