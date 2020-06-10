import React, { Component } from 'react';
import GoogleMapReact from 'google-map-react';
import mock from './mock';
import { googleMapsAPIKey } from '../../config/env';    

const AnyReactComponent = ({ text }) => {
    console.log(text)
    return (
        <div>{text}</div>
    );
};

const fakeServerCall = () => new Promise((resolve, reject) => {
    setTimeout(() => {
        resolve(mock);
    }, 2000);

    // If there's an error:
    // reject(error);
});

class Map extends Component {
    constructor(props){
        super(props)
        this.state = { 
            error: null,
            loading: false,
            locations: null
        }
    }
  
    static defaultProps = {
        center: {
            lat: 47.62,
            lng: -122.3493
            
        },
        zoom: 11
    };

    componentDidMount() {
        console.log(this.state);

        // Fetch data from the server
        this.fetchLocationData();
    }

    fetchLocationData() {
        this.setState({
            loading: true,
        });

        fakeServerCall().then((data) => {
            this.setState({
                loading: false,
                locations: data
            });
        }).catch((error) => {
            this.setState({
                error: error,
                loading: false,
                locations: null
            })
        })
    }

    render() {
        if (this.state.error) {
            return (
                <div>Error: {this.state.error}</div>
            )
        }

        if (this.state.loading) {
            return (
                <div>Loading...</div>
            )
        }

        return (
        // Important! Always set the container height explicitly
        <div style={{ height: '100vh', width: '80%' }}>
            <GoogleMapReact
            bootstrapURLKeys={{ key: googleMapsAPIKey }}
            defaultCenter={this.props.center}
            defaultZoom={this.props.zoom}
            >
                {this.state.locations && this.state.locations.length > 0 && this.state.locations.map((location) => (
                    <AnyReactComponent
                        lat={location.lat}
                        lng={location.lng}
                        text="My Marker"
                    />
                ))}
            </GoogleMapReact>
        </div>
        );
    }
}

export default Map;