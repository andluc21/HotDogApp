import React, { Component } from 'react';
import PropTypes from 'prop-types';
import QuantityIncrementor from '../QuantityIncrementor';
import HotDogStockImage from "../hotdogitemimage.jpg";

export default class MenuItem extends Component {
  render() {
    return (
      <div>          
        <img src={ HotDogStockImage } 
          className="item-image" 
          alt="hotdogitemimage">
        </img>   
        <div className = "item-title">
          { this.props.menuItem.name }           
        <div className = "item-price">
          { this.props.menuItem.price }         
        </div>
        </div>
        <div className = "item-body">
          { this.props.menuItem.description }        
        </div>
        <QuantityIncrementor updateQuantity={ this.updateQuantity } />
      </div>
    )
  }
}

// PropTypes
MenuItem.propTypes = {
  menuItem: PropTypes.object.isRequired  
}

