import React from 'react';
import { Link } from 'react-router-dom';

class ReservationSearch extends React.Component {
  constructor(props){
    super(props);
    this.state = this.props.reservation;
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  handleSubmit(event) {
    event.preventDefault();
    this.props.history.push(this.props.match.url + '/reservations.new');
  }

  getReservationTimes() {
    const time = [];
    for (let hour = 9; hour < 12; hour++) {
      time.push(hour + ':00 AM', hour + ":30 AM");
    }
    time.push('12:00 PM', '12:30 PM');
    for (let hour = 1; hour < 12; hour ++ ){
      time.push(hour + ':00 PM', hour + ":30 PM");
    }
    const resTimes = time.map((t, idx) => {
      return(<option key={idx} value={t}>{t}</option>);
    });
    return resTimes ;
  }

  handleChange(field) {
    return(e) => {
      this.setState({[field]: e.target.value});
    };
  }

  converDate(date) {
    const yyyy = date.getFullYear().toString();
    const mm = (date.getMonth() + 1).toString();
    const dd = date.getDate().toString();

    let mmChars = mm.split("");
    let ddChars = dd.split("");
    return yyyy + '-' + (mmChars[1] ? mm : "0" + mmChars[0]) + "-" + (ddChars[1] ? dd : "0" + ddChars[0]) ;
  }


  render() {
    if (!this.props.restaurant) { return null; }
    return (
      <div>
        <h1>Make a reservation</h1>
        <form onSubmit={this.handleSubmit}>
          <div>
            <label>Party Size
              <select value={this.state.num_guests} onChange={this.handleChange('num_guests')}>
                <option key="1" value="1">For 1</option>
                <option key="2" value="2">For 2</option>
                <option key="3" value="3">For 3</option>
                <option key="4" value="4">For 4</option>
                <option key="5" value="5">For 5</option>
                <option key="6" value="6">For 6</option>
                <option key="7" value="7">For 7</option>
                <option key="8" value="8">For 8</option>
                <option key="9" value="9">For 9</option>
                <option key="10" value="10">For 10 </option>
                <option key="11" value="11">For 11</option>
                <option key="12" value="12">For 12</option>
                <option key="13" value="13">For 13</option>
                <option key="14" value="14">For 14</option>
                <option key="15" value="15">For 15</option>
                <option key="16" value="16">For 16</option>
                <option key="17" value="17">For 17</option>
                <option key="18" value="18">For 18</option>
                <option key="19" value="19">For 19</option>
                <option key="20" value="20">For 20</option>
              </select>
              </label>
              <label>Date
                <input
                  type="date"
                  value={this.state.date}
                  onChange={this.handleChange('date')}
                  min={this.state.date}>
                </input>
              </label>
              <label>Time
                <select value={this.state.time} onChange={this.handleChange('time')}>
                  {this.getReservationTimes()}
                </select>
              </label>
          </div>
          <Link to={{pathname:`/restaurants/${this.props.restaurant.id}/reservation/new`, reservation: this.state, restaurant: this.props.restaurant}} className="res-search-button">
            Find a table
          </Link>
        </form>
      </div>
    );
  }
}

export default ReservationSearch;
