import React, { Component } from "react";
import { BrowserRouter as Router, Route, Link } from "react-router-dom";

import OrderHistory from "./OrderHistory";
import CurrentOrders from "./CurrentOrders";
import Analytics from "./Analytics";
import CartMenu from "./CartMenu";
import UpdateLocation from "./UpdateLocation";
import SelectCart from "./SelectCart";

import "./Admin.css";

export default class AdminLanding extends Component {
  render() {
    return (
      <Router>
        <div className="l-nav">
          <nav className="nav">
            <ul>
              <li className="adminUsername">Welcome,</li>
              <li className="adminUsername">@AdminUserName</li>
              <Link to="/current_orders">Current Orders</Link>
              <Link to="/order_history">Order History</Link>
              <Link to="/cart_menu">Cart Menu</Link>
              <Link to="/update_location">Update Location</Link>
              <Link to="/admin">Select Cart</Link>
              <Link to="/analytics" replace>
                Analytics
              </Link>
            </ul>
            <input type="submit" value="Logout" className="btn" />
          </nav>
        </div>
        <Route path="/admin" component={SelectCart} />
        <Route path="/current_orders" component={CurrentOrders} />
        <Route path="/order_history" component={OrderHistory} />
        <Route path="/cart_menu" component={CartMenu} />
        <Route path="/update_location" component={UpdateLocation} />
        <Route path="/analytics" component={Analytics} />
      </Router>
    );
  }
}
