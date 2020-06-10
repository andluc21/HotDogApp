import React, { Component } from 'react';
import MenuItems from './MenuItems';
import ShoppingCart from './ShoppingCart';
import './Menu.css';

export default class Menu extends Component {
  state = {
    menuItems: [
      {
        id: 1,
        name: 'Chicago Dog',
        price: 7,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 2,
        name: 'Denver Dog',
        price: 9,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 3,
        name: 'Chicago Dog',
        price: 7,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 4,
        name: 'Denver Dog',
        price: 9,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 5,
        name: 'Chicago Dog',
        price: 7,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 6,
        name: 'Denver Dog',
        price: 9,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 7,
        name: 'Chicago Dog',
        price: 7,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 8,
        name: 'Denver Dog',
        price: 9,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 9,
        name: 'Chicago Dog',
        price: 7,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 10,
        name: 'Denver Dog',
        price: 9,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
      {
        id: 11,
        name: 'Chicago Dog',
        price: 7,
        description: 'ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description; ingredients description'
      },
    ]
  }

  render() {
    return (
      <section className="content">
        <div className="container">
          <ShoppingCart />
          <div className="menutitle">MENU ITEMS</div>          
          <div className = "columns thirds">
            <MenuItems menuItems={ this.state.menuItems } /> 
          </div>
        </div>
      </section>
    );    
  }
}
