import React from 'react';
import '@testing-library/jest-dom';
import { render, screen } from '@testing-library/react';
import BillingAddresses from '../components/BillingAddresses';

describe('BillingAddresses screen', () => {
  it('renders', () => {
    render(<BillingAddresses />);
    expect(screen.getByText('Billing Addresses')).toBeInTheDocument();
  });
});