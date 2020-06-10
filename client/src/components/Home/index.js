import React from 'react';
import './Home.css';
import MyMap from '../Map';

const Home = ()=> {    
    return(       
        <div className = "HomeWrapper">
            <main className = 'HomeMain'>
                <h1>Welcome to Sup Dawg!</h1>
                <p>Please select a cart to begin your order!</p>
                <MyMap className = "Map" />
            </main>   
        </div>      
        )
}
export default Home;