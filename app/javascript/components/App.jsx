import React from "react";
import {
  BrowserRouter as Router,
  Route,
  Routes,
  Link
} from "react-router-dom";
import BillingAddressForm from "./BillingAddressForm";
import BillingAddresses from "./BillingAddresses";

const App = () => {
  return (
    <Router>
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
    </Router>
  );
}

export default App;