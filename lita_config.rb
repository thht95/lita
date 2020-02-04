require './handlers/ping.rb'
require './handlers/helpers.rb'
require './handlers/stars.rb'
require './handlers/destroyer.rb'
require './handlers/nerdbeer.rb'

Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Magic"
  config.robot.mention_name = "magic"

  #slack config
  # config.robot.adapter = :slack
  config.robot.adapter = :shell
  config.robot.admins = ["URRLG4W82"]

  config.robot.locale = :en

  config.adapters.slack.token = "xoxb-888479966624-915662629586-lxslkMkLCCRAkmA3ImoKZYvw"
  # config.adapters.slack.link_names = true
  # config.adapters.slack.parse = "full"
  # config.adapters.slack.unfurl_links = false
  # config.adapters.slack.unfurl_media = false

  #port 
  config.http.port = 1311

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :info      

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"
end
