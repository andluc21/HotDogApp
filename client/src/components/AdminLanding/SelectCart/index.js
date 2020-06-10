import React, { Component } from 'react';
import MyMap from '../../Map';

import './SelectCart.css';

export default class SelectCart extends Component {
  render() {
    return (   
      <div className="map">          
        <MyMap className="map" />
      </div>  
    )
  }
}
