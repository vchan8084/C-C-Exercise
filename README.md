# C-C-Exercise

## How to Run
Use `rake db:encryption:init` to acquire the three keys needed for encryption.

In .env file, set up the variables:
`ACTIVE_RECORD_ENCRYPTION_PRIMARY_KEY`
`ACTIVE_RECORD_ENCRYPTION_DETERMINISTIC_KEY`
`ACTIVE_RECORD_ENCRYPTION_KEY_DERIVATION_SALT`

(For more information on Active Record Encryption, please refer to this [guide](https://guides.rubyonrails.org/active_record_encryption.html))

Also add this variable:
`ENV_URL=http://localhost:3000`

Use `rake db: seed` for some dummy data.

Use `rails s` to start app.

`http://localhost:3000/`

## Heroku
This app is hosted on heroku.

`https://cc-exercise-vanessa.herokuapp.com/`

## To Do:
1. more validations (i.e - setting :message option for error message, string validation)
2. more tests
3. set up linter and prettier
4. styling
5. display more helpful error messaging on frontend