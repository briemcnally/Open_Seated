import React from 'react';
import { withRouter } from 'react-router-dom';
import ReservationSearchContainer from '../reservations/reservation_search_container';

class RestaurantSearch extends React.Component {
  constructor(props){
    super(props);
    this.state = { num_guests: "", date:"", time:"", searchTerm:"" };
    this.handleSubmit = this.handleSubmit.bind(this);
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

  handleSubmit(event) {
    event.preventDefault();
    if (this.state.searchTerm === "") {
      this.props.searchRestaurants(this.state.searchTerm).then(
        this.props.history.push('/restaurants'));
    } else {
    this.props.searchRestaurants(this.state.searchTerm).then(
      this.props.history.push('/restaurants/search'));
    }
  }

  render(){
    return(
      <div className="main-page-form">
        <div className="content-block-header">
          <h1 className="main-page-res-title">Make restaurant reservations the easy way</h1>
        </div>
        <form>
          <div className="main-page-search">
            <select  onChange={this.handleChange('num_guests')}>
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

            <input
              type="date"
              onChange={this.handleChange('date')}>
            </input>

            <select onChange={this.handleChange('time')}>
              {this.getReservationTimes()}
            </select>

            <label>
              <input type="text"
                      placeholder="Locaiton, Restaurant, or Cuisine"
                      onChange={this.handleChange('searchTerm')}>
              </input>
            </label>
            <input type="submit" className="main-page-submit-button"
                  onClick={this.handleSubmit}
                  value="Find a Table">
            </input>
          </div>
        </form>
      </div>
    );
  }
}



export default withRouter(RestaurantSearch);
