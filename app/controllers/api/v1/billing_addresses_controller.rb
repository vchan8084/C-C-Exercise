class Api::V1::BillingAddressesController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :set_billing_address, only: %i[ show ]

  def index
    billing_addresses = BillingAddress.all
    render json: billing_addresses
  end

  def show
    if @billing_address
      render json: @billing_address
    else
      render json: @billing_address.errors
    end
  end

  def create
    @billing_address = BillingAddress.new(billing_address_params)

    respond_to do |format|
      if @billing_address.save
        format.html { redirect_to api_v1_billing_addresses_index_url(BillingAddress.last), notice: "Billing address was successfully created." }
        format.json { render :show, status: :created, location: api_v1_billing_addresses_index_url(BillingAddress.last) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @billing_address.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billing_address
      @billing_address = BillingAddress.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def billing_address_params
      params.require(:billing_address).permit(:name, :email_address, :phone_number, :address, :city, :state, :zip)
    end
end
