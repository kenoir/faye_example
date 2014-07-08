require 'faye'
require 'eventmachine'

EM.run {
  client = Faye::Client.new('http://localhost:9292/faye')
  EventMachine.add_periodic_timer 5, proc { client.publish('/foo', 'text' => Time.now.to_s) }
}
