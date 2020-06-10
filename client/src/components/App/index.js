import React from "react";
import { BrowserRouter as Router, Link, Route } from "react-router-dom";

import "./App.css";

import Home from "../Home";
import { AdminSignIn } from "../AdminSignIn/index";
import AdminLanding from "../AdminLanding/index";
import { Vendor } from "../Vendor/index";
import Menu from "../Menu";
import About from "../About";
import Contact from "../Contact";
import Footer from "../Footer";

import { Layout, Header, Navigation, Drawer, Content } from "react-mdl";
import ShoppingCart from "../Menu/ShoppingCart";

//All routes are created on this page using imported components.

const App = () => {
  return (
    <div className="App">
      <Router>
        {/* Uses a transparent header that draws on top of the layout's background */}
        <div style={{ height: "250px" }}>
          <Layout
            style={{ background: "url(/seattlenight.jpg) center / cover" }}
          >
            <Header
              transparent
              title="SUP DAWG?"
              style={{ color: "white", margin: "0, auto" }}
            >
              <Navigation>
                <Link to="/">ORDER</Link>
                <Link to="/about">ABOUT</Link>
                <Link to="/contact">CONTACT</Link>
                <Link to="/menu">MENU</Link>
                <Link to="/cart">CART</Link>
              </Navigation>
            </Header>
            <Drawer title="EMPLOYEE LINKS">
              <Navigation>
                <Link to="/vendor">VENDOR LOGIN</Link>
                <Link to="/admin">ADMIN LOGIN</Link>
              </Navigation>
            </Drawer>
            <Content>
              <div>
                <Route path="/" exact strict component={Home} />
                <Route path="/about" exact strict component={About} />
                <Route path="/contact" exact strict component={Contact} />
                <Route path="/admin" exact strict component={AdminSignIn} />
                <Route path="/vendor" exact strict component={Vendor} />
                <Route path="/menu" exact strict component={Menu} />
                <Route path="/cart" exact strict component={ShoppingCart} />
                <Route
                  path="/adminLanding"
                  exact
                  strict
                  component={AdminLanding}
                />
              </div>
            </Content>
          </Layout>
          <Footer />
        </div>
      </Router>
    </div>
  );
};

export default App;
