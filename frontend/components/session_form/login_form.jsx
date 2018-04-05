import React from 'react';
import { withRouter } from 'react-router-dom';
import { Link } from 'react-router-dom';

class LoginForm extends React.Component {

  constructor(props) {
    super(props);
    this.state = this.props.usercred;
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  update(field) {
    return e => this.setState({
      [field]: e.currentTarget.value
    });
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

  render() {
      return (
        <div className="form1">
          <form onSubmit={this.handleSubmit} className="session-form">
            <h3>Please Sign In</h3>
            {this.renderErrors()}
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
            </fieldset>
          </form>
        </div>
      );
    }
  }

export default withRouter(LoginForm);
