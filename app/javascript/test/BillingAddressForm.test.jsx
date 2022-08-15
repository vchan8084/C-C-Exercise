import React from 'react';
import '@testing-library/jest-dom';
import { render, screen } from '@testing-library/react';
import BillingAddressForm from '../components/BillingAddressForm';

describe('BillingAddressForm screen', () => {
  it('renders', () => {
    render(<BillingAddressForm />);
    expect(screen.getByLabelText('Name:')).toBeInTheDocument();
    expect(screen.getByLabelText('Email Address:')).toBeInTheDocument();
    expect(screen.getByLabelText('Phone Number:')).toBeInTheDocument();
    expect(screen.getByLabelText('Street Address:')).toBeInTheDocument();
    expect(screen.getByLabelText('City:')).toBeInTheDocument();
    expect(screen.getByLabelText('State:')).toBeInTheDocument();
    expect(screen.getByLabelText('Zip:')).toBeInTheDocument();
  });
});