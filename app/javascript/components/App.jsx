import React from "react";
import {
  Switch,
  Route,
  Routes,
  Link
} from "react-router-dom";
import BillingAddressForm from "./BillingAddressForm";
import BillingAddresses from "./BillingAddresses";

export default function App() {
  return (
      <div>
        <nav>
          <ul>
            <li>
              <Link to="/billing-address-form">Billing Address Form</Link>
            </li>
            <li>
              <Link to="/">Billing Addresses</Link>
            </li>
          </ul>
        </nav>

        <Routes>
          <Route path="/billing-address-form" element={<BillingAddressForm />} />
          <Route path="/" element={<BillingAddresses />} />
        </Routes>
      </div>
  );
}