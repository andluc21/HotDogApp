import React, { Component } from 'react';
import { Grid, Cell } from 'react-mdl';
import dawg from './images/dawg.png';
import Map from '../Map';


class Header extends Component {
  render() {
    return(
      <div style={{width: '100%', margin: 'auto'}}>
        <Grid className="landing-grid">
          <Cell col={12}>
          <div className="banner-text">
              <h1>Sup Dawg</h1>\
              <hr/>
              <p>Chicago-style | Dodger Dog | Corn dogs | Ham Dogs </p>
            </div>
          </Cell>         
        </Grid>
      </div>
    )
  }
}

export default Header;
