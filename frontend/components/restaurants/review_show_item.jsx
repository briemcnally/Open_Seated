import React from 'react';
import { Link } from 'react-router-dom';

const ReviewShowItem = ({review}) => (
  <div className="review-item">
    <div className="review-post-header">
      <i className="far fa-comment"></i>
      <h2>OpenSeated Diner</h2>
    </div>
    <li>{review.body}</li>
  </div>
);

export default ReviewShowItem;
