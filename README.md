# RoadTripper


[RoadTripper](https://roadtripper1.herokuapp.com/) is a web application built to allow users to plan, coordinate, and document cross country road trips.  The application pulls in data and services from multiple APIs including MapBox, Dark Skies, Google Places, and TicketMaster.  Authorization is provided via Google OAuth.

![screenshot](https://i.imgur.com/lRYM7gE.jpg)


## Getting Started

These instructions will get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

You will need access to a terminal application and a text editor.

### Installing

From your terminal, clone the repository to your local machine:

```
git clone https://github.com/colinwarmstrong/roadtripper.git
```

Change into the directory:

```
cd roadtripper
```

Install and update gems:

```
bundle install
bundle update
```

Setup the database:

```
rake db:{drop,create,migrate,seed}
```

The repository is now setup on your local machine. To run a local version of the repository, first spin up a local Rails server:

```
rails s
```

Once the server is up and running, visit [http://localhost:3000](http://localhost:3000) to view the application locally.


## Running the tests

The test suite is built using RSpec.  To run the test suite after you have set up the repository locally, run `bundle exec rspec` from the command line.


## Deployment

RoadTripper is deployed through [Heroku](https://www.heroku.com/) and hosted at [https://roadtripper1.herokuapp.com/](https://roadtripper1.herokuapp.com/).

## Built With

* [Rails 5.1.6](https://rubyonrails.org/) - Ruby based web framework
* [Postgres 1.1.3](https://www.postgresql.org/) - Relational SQL Database

## Author

* **Colin Armstrong**  
 	- [GitHub](https://github.com/colinwarmstrong)
 	- [LinkedIn](https://www.linkedin.com/in/colinwarmstrong/)
 	- [Twitter](https://twitter.com/colinarms93)


## Contributing

1. Fork the repo
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Create your new feature (make sure to test it and run RSpec)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push up your branch (`git push origin my-new-feature`)
6. Create a new pull request

Or email the author at colinwarmstrong@gmail.com with any questions, comments, or concerns.
