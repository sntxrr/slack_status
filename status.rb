require 'slack-ruby-client'
require 'json'

tokens = JSON.parse(File.read("tokens"))

presence = "auto" if /(here|auto|working|available)/.match(ARGV[0])
presence = "away" if /(away|unavailable)/.match(ARGV[0])

statuses = JSON.parse(File.read("statuses"))

if ARGV[1]
  status = statuses.select{|k| k.downcase[ARGV[1]]}
  status_text, status_emoji = status.first
else
  status = statuses.select{|k| k["Default"]}
  status_text = ""
  status_emoji = status["Default"]
end

status_payload = {
  "status_text": status_text,
  "status_emoji": status_emoji,
  "status_expiration": 0
}.to_json

tokens.each_value do |token|
  Slack.configure do |config|
    config.token = token
    raise 'Missing ENV[SLACK_API_TOKENS]!' unless config.token
  end

  client = Slack::Web::Client.new
  client.users_setPresence(presence: presence)
  client.users_profile_set(profile: status_payload)
end
