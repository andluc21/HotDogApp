import React, { Component } from 'react';
import MenuItem from '../MenuItem';
import PropTypes from 'prop-types';

export default class MenuItems extends Component {
  render() {
    return this.props.menuItems.map( (menuItem) => (
      <div className = "item">
      <MenuItem key={ menuItem.id } menuItem={ menuItem } />
      </div>
    ));    
  }
}

// PropTypes
MenuItems.propTypes = {
  menuItems: PropTypes.array.isRequired
}
    
