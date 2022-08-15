class BillingAddress < ApplicationRecord
  validates :name, presence: true
  encrypts :name

  validates :email_address, presence: true
  encrypts :email_address

  validates :phone_number, presence: true
  encrypts :phone_number

  validates :address, presence: true
  encrypts :address

  validates :city, presence: true
  encrypts :city

  validates :state, presence: true
  encrypts :state

  validates :zip, presence: true
  encrypts :zip
end
