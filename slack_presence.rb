#!/usr/bin/env ruby

require 'dotenv'
require 'json'

Dotenv.load

presence = ARGV[0]

tokens = ENV['SLACK_TOKENS']
tokens = tokens.split(',')

tokens.each do |token|
  `curl -s 'https://slack.com/api/users.setPresence?token=#{token}&presence=#{presence}'`
end
