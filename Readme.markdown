# Readme.markdown

## Running Locally

**Pre requisites**

Currently running Ruby 1.9.3 on Heroku and locally.

    $ git clone git://github.com/shaunoconnor/shaunoconnor.railsblog.git
    $ cd shaunoconnor.railsblog


Get [Bundler](http://gembundler.com) `gem install bundler` 


Setup the database's

	$ rvm 1.9.3
    $ bundle install
    $ rake db:create
    $ rake db:schema:load


And start the server using [Foreman](https://github.com/ddollar/foreman)

    $ bundle exec foreman start


The site should be running at <http://localhost:5000>


## Production

Use [heroku](http://heroku.com)
