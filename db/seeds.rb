# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bob = BillingAddress.create(name: "Bob Dole", email_address: "bdole@hotmail.com", phone_number: "7189009999", address: "9 Cherry Lane", city: "Mahwah", state: "NJ", zip: "20113")
jane = BillingAddress.create(name: "Jane Smith", email_address: "janesmith899@aol.com", phone_number: "3475661234", address: "500 Santa Monica Blvd", city: "Santa Monica", state: "CA", zip: "56117")
john = BillingAddress.create(name: "John Smith", email_address: "johnsmith@gmail.com", phone_number: "7185555768", address: "222 West 22nd St", city: "New York", state: "NY", zip: "10010")
mary = BillingAddress.create(name: "Mary Johnson", email_address: "mjohnson94@gmail.com", phone_number: "3475942948", address: "566 Broadway", city: "Chicago", state: "IL", zip: "74888")