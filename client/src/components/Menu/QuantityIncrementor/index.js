import React, { Component } from 'react';


export default class QuantityIncrementor extends Component {
  state = { quantity: 0 };

  onSubmit = (event) => {
    event.preventDefault();
    this.props.updateQuantity(this.state.quantity);
    console.log(this.menuItem.quantity);
  }

  onChange = (event) => this.setState({ quantity: event.target.value });

  render() {
    return (
      <form onSubmit={ this.onSubmit }>
        <input  
          type="number" 
          id="quantity"
          className="quantity"  
          min="0"
          defaultValue="0" />
        <input
          type="submit" 
          value="Add to cart" 
          className="btn" /> 
      </form> 
    )
  }
}