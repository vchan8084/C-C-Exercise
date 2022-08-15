import React, { useState } from 'react'

const formValues = {
  name: '',
  emailAddress: '',
  phoneNumber: '',
  streetAddress: '',
  city: '',
  state: '',
  zip: ''
}

const BillingAddressForm = () => {
  const [billingAddressValues, setBillingAddressValues] = useState(formValues);
  const [message, setMessage] = useState('');

  const updateBillingAddressValue = (name, value) => {
    setBillingAddressValues((billingAddressValues) => ({
      ...billingAddressValues,
      [name]: value,
    }));
  };


  const handleSubmit = async (e) => {
    e.preventDefault();

    let billing = {
      billing_address: {
      name: billingAddressValues.name,
      email_address: billingAddressValues.emailAddress,
      phone_number: billingAddressValues.phoneNumber,
      address: billingAddressValues.streetAddress,
      city: billingAddressValues.city,
      state: billingAddressValues.state,
      zip: billingAddressValues.zip
    }}

    try {
      let res = await fetch("http://localhost:3000/api/v1/billing_addresses/create", {
        method: "POST",
        headers: {
          Accept: 'application/json',
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(billing)
      });
      let resJson = await res.json();
      if (res.status === 201) {
        setMessage('Success')
      } else {
        setMessage('Error')
      }
      } catch (err) {
        console.log(err);
      }
  };

  return (
    <>
      <form onSubmit={handleSubmit}>
        <label>
          Name:
          <input
            type="text"
            name="name"
            value={billingAddressValues.name}
            onChange={(e) => updateBillingAddressValue(e.target.name, e.target.value)
          }/>
        </label>
        <label>
          Email Address:
          <input
            type="text"
            name="emailAddress"
            value={billingAddressValues.emailAddress}
            onChange={(e) => updateBillingAddressValue(e.target.name, e.target.value)
          }/>
        </label>
        <label>
          Phone Number:
          <input
            type="text"
            name="phoneNumber"
            value={billingAddressValues.phoneNumber}
            onChange={(e) => updateBillingAddressValue(e.target.name, e.target.value)
          }/>
        </label>
        <label>
          Street Address:
          <input
            type="text"
            name="streetAddress"
            value={billingAddressValues.streetAddress}
            onChange={(e) => updateBillingAddressValue(e.target.name, e.target.value)
          }/>
        </label>
        <label>
          City:
          <input
            type="text"
            name="city"
            value={billingAddressValues.city}
            onChange={(e) => updateBillingAddressValue(e.target.name, e.target.value)
          }/>
        </label>
        <label>
          State:
          <input
            type="text"
            name="state"
            value={billingAddressValues.state}
            onChange={(e) => updateBillingAddressValue(e.target.name, e.target.value)
          }/>
        </label>
        <label>
          Zip:
          <input
            type="text"
            name="zip"
            value={billingAddressValues.zip}
            onChange={(e) => updateBillingAddressValue(e.target.name, e.target.value)
          }/>
        </label>
        <br />
        <button type="submit">Submit</button>
        {message ? (
          <p>{message}</p>
        ) : (
          null
        )}
      </form>
    </>
  )
}
export default BillingAddressForm;