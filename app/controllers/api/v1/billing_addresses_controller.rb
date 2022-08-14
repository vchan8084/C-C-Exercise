class Api::V1::BillingAddressesController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :set_billing_address, only: %i[ show edit update destroy ]

  # GET /billing_addresses or /billing_addresses.json
  def index
    @billing_addresses = BillingAddress.all
    render json: @billing_addresses
  end

  # GET /billing_addresses/1 or /billing_addresses/1.json
  def show
    if @billing_address
      render json: @billing_address
    else
      render json: @billing_address.errors
    end
  end

  # GET /billing_addresses/new
  def new
    @billing_address = BillingAddress.new
  end

  # GET /billing_addresses/1/edit
  def edit
  end

  # POST /billing_addresses or /billing_addresses.json
  def create
    @billing_address = BillingAddress.new(billing_address_params)

    respond_to do |format|
      if @billing_address.save
        format.html { redirect_to api_v1_billing_addresses_index_url, notice: "Billing address was successfully created." }
        format.json { render :show, status: :created, location: api_v1_billing_addresses_index_url }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @billing_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billing_addresses/1 or /billing_addresses/1.json
  def update
    respond_to do |format|
      if @billing_address.update(billing_address_params)
        format.html { redirect_to billing_addresses_url(@billing_address), notice: "Billing address was successfully updated." }
        format.json { render :show, status: :ok, location: api_v1_billing_addresses_index }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @billing_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billing_addresses/1 or /billing_addresses/1.json
  def destroy
    @billing_address.destroy

    respond_to do |format|
      format.html { redirect_to billing_addresses_url, notice: "Billing address was successfully destroyed." }
      format.json { head :no_content }
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
