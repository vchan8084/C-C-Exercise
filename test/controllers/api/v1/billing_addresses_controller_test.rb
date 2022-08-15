require "test_helper"

class Api::V1::BillingAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @billing_address = billing_addresses(:one)
  end

  test "should get index" do
    get api_v1_billing_addresses_index_url
    assert_response :success
  end

  test "should show billing_address" do
    get api_v1_billing_addresses_index_url(@billing_address)
    assert_response :success
  end

  test "should create billing_address" do
    assert_difference('BillingAddress.count') do
      post api_v1_billing_addresses_create_url, params: { billing_address: { address: @billing_address.address, city: @billing_address.city, email_address: @billing_address.email_address, name: @billing_address.name, phone_number: @billing_address.phone_number, state: @billing_address.state, zip: @billing_address.zip } }
    end

    assert_redirected_to api_v1_billing_addresses_index_url(BillingAddress.last)
  end
end
