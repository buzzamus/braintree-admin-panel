# Braintree-Graphs

* This is just a demo and not intended to slap your Braintree credentials in and go.

### Setup:

1) To test it out create a `.env` file, enter in your Braintree credentials, and run `bundle install`

2) Setup the Postgres database, run `rails db:create`, and `rails db:migrate`

3) start your Rails server.

## Dependencies:

* This demo uses Postgres for better timestamp usage

* Rails 5.1

* Ruby 2.5

* The Chartkick gem is heavily used to create charts of Braintree data

* The Hightop and Groupdate gems are used to enhance the Chartkick usage
