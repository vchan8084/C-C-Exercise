import React, { useState, useEffect } from 'react';

const BillingAddresses = () => {
  const [data, setData] = useState();

  const getAddresses = async () => {
    try {
      let res = await fetch(`${process.env.ENV_URL}/api/v1/billing_addresses/index`, {
        method: "GET",
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        }
      });
      let resJson = await res.json();
      if (res.status === 200) {
        setData(resJson)
      }
      } catch (err) {
        console.log(err);
      }
    }

  useEffect(() => {
    getAddresses();
  }, []);

return (
  <>
    <h1>Billing Addresses</h1>
    <br />
    {data &&
      data.map((address) => (
        <div key={address.id}>
          <h2>{address.name}</h2>
          <p>
            Email: {address.email_address}
          </p>
          <p>
            Phone Number: {address.phone_number}
          </p>
          <p>
            Address: {address.address}
          </p>
          <p>
            City: {address.city}
          </p>
          <p>
            State: {address.state}
          </p>
          <p>
            Zip: {address.zip}
          </p>
          <hr
            style={{
              borderTop: '3px solid #bbb'
            }}
          />
        </div>
      ))
    }
  </>
  )
}
export default BillingAddresses;