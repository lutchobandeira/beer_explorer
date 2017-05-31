# Beer Explorer

This is a project created during my free time. It uses the data from [BreweryDB](http://www.brewerydb.com/developers/docs), a really nice beer api. I am using the free api access, which has a limit of 400 requests a day. In this project I use the api just to collect data. In a real application I would use the paid access, that gives the option to implement a webhook to keep the data up to date.

The application is deployed at heroku: http://beerexplorerapp.herokuapp.com/

## How to run it in your machine

Clone this repo:

```console
git clone git@github.com:lutchobandeira/beer_explorer.git
cd beer_explorer
bundle install
```

Create your api key at [BreweryDB](http://www.brewerydb.com/developers/docs) site.

Place the api key at ```config/application.yml```:

```ruby
brewerydb_api_key: <your api key>
```

Set up your ```config/database.yml``` file with your database configuration. An example file is provided:

```console
cp config/database.yml.example config/database.yml
```

Next up, create your db:

```console
rails db:create
rails db:migrate
```

Run the rake task to import data from the api:

```console
rake beer_explorer:import
```
The execution will take some minutes until api daily limit is reached.

Optionally you can run the specs:

```console
rspec spec
```

## This is an on-going project

New features are coming!
