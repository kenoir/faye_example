#JRuby Websockets using Faye

##Setup

```sh
chruby jruby
```

###Client (Browser)

```sh
cd client
node server.js
```
Visit http://localhost:8080/

###Server (Puma)

```sh
cd server
bundle install
bundle exec puma config.ru -p 9292
```

###Server-Client (EventMachine)

```sh
bundle exec ruby client.rb
```
