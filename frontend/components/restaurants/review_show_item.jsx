import React from 'react';
import { Link } from 'react-router-dom';

const ReviewShowItem = ({review}) => (
  <li>
    <ul>
      <li>{review.body}</li>
    </ul>
  </li>
);

export default ReviewShowItem;
