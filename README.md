# Rastreamento App

Solution developed in Ruby on Rails that demonstrates user's visit tracking functionality on a site.

## Installation

Git clone the application:

```console
git clone https://github.com/vitor-caetano/app_rastreamento_usuarios.git
```

Change to application directory:

```console
cd app_rastreamento_usuarios
```

Run the following command to install dependencies:

```console
bundle install
```

Create a development database:

```console
rake db:migrate RAILS_ENV=development
```

### Optional Installation of Redis

The application can be used with Sidekiq / Redis for performance proof of concept. If you choose to use this option (see configuration bellow) you must install Redis:

```console
brew install redis
```

##Configuration

The solution comes with a config/application.yml file with a default configuration:

```ruby
USE_SIDEKIQ: no
```

Switch this option to 'yes' if you want to run Sidekiq / Redis performance proof of concept.

##Running the application

Boot WEBrick HTTP web server:

```console
rails server
```

Open a browser at the address:

```console
http://localhost:3000/
```
Click links 'Home' 'Contato' 'Sobre' at the navbar and finally click 'Relatório de Rastremaneto' to get the user's visit tracking report.

### Optional Execution of Sidekiq

If the application is configured to use Sidekiq you must start it with:

```console
bundle exec sidekiq
```

You can monitor the default queue at the address:

```console
http://localhost:3000/sidekiq
```

##Testing the application

Run the rspec command on the application folder:

```console
rspec
```
