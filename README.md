#JRuby Websockets using Faye

Uses: 
 - [Faye](http://faye.jcoglan.com/)
 - [Puma](http://puma.io/)
 - [EventMachine](http://rubyeventmachine.com/)

##Setup

```sh
chruby jruby
```

###Client (Browser)
Serves the static HTML containing the browser client, subscribes to Faye server
```sh
cd client
node server.js
```
Visit [http://localhost:8080/](http://localhost:8080/)

###Server (Puma)
Provides the Faye server (using Puma)
```sh
cd server
bundle install
bundle exec puma config.ru -p 9292
```

###Server-Client (EventMachine)
Provides a server-client to publish to browser clients via Faye server
```sh
bundle exec ruby client.rb
```
