# OpeSeated :fork_and_knife:
[![forthebadge](https://forthebadge.com/images/badges/made-with-ruby.svg)](https://forthebadge.com) [![forthebadge](https://forthebadge.com/images/badges/uses-js.svg)](https://forthebadge.com)

[Live Demo!](https://open-seated.herokuapp.com/#/)

OpenSeated is an online restaurant reservation platform clone of OpenTable. The platform was developed using Ruby on Rails, PostgreSQL, React.js, and Redux. This project was designed and built in a ten day time period.


## Features
* Backend to frontend secure user authentication using BCrpyt.
* Users can search for restaurants by location, cuisine, or restaurant name.
  * Users can view restaurant details including average overall ratings, food ratings, service ratings, value ratings, and ambience ratings.
* Logged in users can book reservations with party size, date, and time.
* Logged in users can favorite restaurants and leave restaurant reviews/comments.

## Restaurant Search
This feature was implemented to allow users to search the restaurant database for restaurants based on certain features.
![alt text](https://i.imgur.com/d9pDfC6.gif)
I accomplished this by querying the database for restaurants matching the search term. I then created GET and POST RESTFUL routes that directed to this function when called.  
```
restaurant.rb

def self.query(search_term)
  if CUISINES.include?(search_term.capitalize)
     Restaurant.where(cuisine: search_term.capitalize)
  else
    Restaurant.where('name ILIKE :query OR city ILIKE :query', query: "%#{search_term.capitalize}")
  end
end

```
This functionality was also applied to the main page featured cuisines and featured areas articles.
![alt-text](https://i.imgur.com/8wJFmhW.png)

## Creating a Reservation
Users can view the various restaurants and receive more detailed information about that particular restaurant. One of the features I was most excited for was creating reservations for users. On each restaurant show page a user can search for a reservation. Backend validations validate available seating a date in the future. Users are then redirected to a final confirmation page, where users can provide optional additional details about the nature of their reservation before a final submission. Invalid reservations yield error messages. The restaurant name also links users back to the show page in case any errors were made in the reservation search.

![alt-text](https://i.imgur.com/xsr1MZN.gif)

## Diner Reviews
Logged in users are able to access the review form. Diners can rate the restaurant on general rating, food, service, ambience, and value. Error messages are displayed if all fields are not completed. Composite averages are calculated in the backend and stored to each restaurants slice of state, which is then displayed on the show page. Comments created by users automatically persist to the restaurant show page.

![alt-text](https://i.imgur.com/3RGGON9.gif)

#Favoriting Restaurants
Logged in users can also toggle a favorite button to add restaurants to their list of favorites. Favorite restaurant_ids are stored to users slice of state. comparing the match params to the user's favorite restaurants we can toggle the button. Functionality does not worked for users who are not logged in. 


````
restaurant_show.jsx

handleFavorite(e) {
  e.preventDefault();
  if (this.favorited() === undefined) {
    this.props.addFavorite(this.props.match.params.restaurantId);
  } else {
    this.props.deleteFavorite(this.props.match.params.restaurantId);
  }
}

favorited(){
  if (this.state.session.currentUser === null) {
    return undefined;
  } else if (this.props.currentUser.favoriteRestaurants !== undefined) {
    const rest = parseInt(this.props.match.params.restaurantId);
    let result = this.props.currentUser.favoriteRestaurants.find(el =>
      el === rest
    );
    return result;
  } else {
    return undefined;
  }

````

## Technologies

#### Additional Resources
* [Wireframes](https://github.com/briemcnally/open-seated/wiki/wireframes)
* [API Endpoints](https://github.com/briemcnally/open-seated/wiki/routes)
* [Database Schema](https://github.com/briemcnally/open-seated/wiki/schema)

## Possible Future Features
In the future I would like to add:
* Editing/Deleting of reservations
* User Profile page with collected reservation points, previous reservations, and favorites
