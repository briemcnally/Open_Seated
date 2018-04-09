import React from 'react';
import { withRouter, Link } from 'react-router-dom';

class SignupForm extends React.Component {

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

  render() {
      return (
        <div className="form1">
          <div className="errors">
            {this.renderErrors()}
          </div>
          <form onSubmit={this.handleSubmit} className="session-form">
            <h3>Welcome to OpenSeated!</h3>

            <fieldset className="session-form-inputs">

              <label>
                <input className="session-input"
                  type="text"
                  value={this.state.fname}
                  onChange={this.update('fname')}
                  className="signup-input"
                  placeholder="First Name *"
                  />
              </label>
              <label>
                <input className="session-input"
                  type="text"
                  value={this.state.lname}
                  onChange={this.update('lname')}
                  className="signup-input"
                  placeholder="Last Name *"
                  />
              </label>
            <label>
              <input className="session-input"
                type="text"
                value={this.state.username}
                onChange={this.update('username')}
                className="signup-input"
                placeholder="Username *"
              />
            </label>
            <label>
              <input className="session-input"
                type="password"
                value={this.state.password}
                onChange={this.update('password')}
                className="signup-input"
                placeholder="Password *"
              />
            </label>
            <label>
              <input className="session-input"
                type="text"
                value={this.state.email}
                onChange={this.update('email')}
                className="signup-input"
                placeholder="Email *"
              />
            </label>

            <div className="session-button">
              <input type="submit" value={this.props.formType} />
            </div>

          </fieldset>
        </form>
      </div>
    );
  }
}

export default withRouter(SignupForm);
