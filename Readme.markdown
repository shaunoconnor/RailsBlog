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


## Running Locally with Vagrant

    $ cd /project_name

  Initialise vagrant

    $ vagrant init

  Start the box

    $ vagrant up

  ssh to the box

    $ vagrant ssh

  change directory to vagrant

    $ cd /vagrant

  Install dependencies

    $ bundle install

  Start the rails app

    $ bundle exec rails s

  If you need to change the VagrantFile, run

    $ vagrant reload


  If you need sqlite in development, run

    $ sudo apt-get install libsqlite3-dev


