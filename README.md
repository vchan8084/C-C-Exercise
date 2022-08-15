# C-C-Exercise

## How to Run
Use `rake db:encryption:init` to acquire the three keys needed for encryption.

In .env file, set up the variables:
`ACTIVE_RECORD_ENCRYPTION_PRIMARY_KEY`
`ACTIVE_RECORD_ENCRYPTION_DETERMINISTIC_KEY`
`ACTIVE_RECORD_ENCRYPTION_KEY_DERIVATION_SALT`

(For more information on Active Record Encryption, please refer to this [guide](https://guides.rubyonrails.org/active_record_encryption.html))

Use `rake db: seed` for some dummy data.

Use `rails s` to start app

## To Do:
1. styling
2. more validations and testing
3. set up linter