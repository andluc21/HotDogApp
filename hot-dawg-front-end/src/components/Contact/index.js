import React from "react";
import { Switch, Route } from "react-router-dom";

import Landing from "../Header";
//import History from "../History";
import Vendors from "../Vendors";
import Carts from "../Carts";
import Menu from "../Menu";

const Contact = () => (
  <Switch>
    <Route exact path="/" component={Landing} />
    <Route path="/History" component={History} />
    <Route path="/contact" component={Contact} />
    <Route path="/Vendors" component={Vendors} />
    <Route path="/Carts" component={Carts} />
    <Route path="/Menu" component={Menu} />
  </Switch>
);

export default Contact;
