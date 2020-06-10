import React, { Component } from 'react'

export default class OrderHistory extends Component {
  state = 
    { 
      adminUserInfo: 
        {
          id: 1,
          name: 'Admin-McAdminface'
        },
      orderInfo: 
      [
        {
          id: 123456,
          scheduledOrderPickupTime: '12:00 p.m.',
          orderComplete: true,
          orderPickedUp: true,
          orderVendorCartInfo: 
            {
              id: 1,
              vendorName: 'Vendor-McVendorface1'
            }
        },
        {
          id: 123457,
          scheduledOrderPickupTime: '12:00 p.m.',
          orderComplete: true,
          orderPickedUp: true,
          orderVendorCartInfo: 
            {
              id: 2,
              vendorName: 'Vendor-McVendorface2'
            }
        },
        {
          id: 123458,
          scheduledOrderPickupTime: '12:00 p.m.',
          orderComplete: true,
          orderPickedUp: true,
          orderVendorCartInfo: 
            {
              id: 3,
              vendorName: 'Vendor-McVendorface3'
            }
        },
        {
          id: 123459,
          scheduledOrderPickupTime: '12:00 p.m.',
          orderComplete: true,
          orderPickedUp: true,
          orderVendorCartInfo: 
            {
              id: 4,
              vendorName: 'Vendor-McVendorface4'
            }
        }
      ] 
    }
  render() {
    return (
      <h1>
        Order History
        
      </h1>
    )
  }
}
