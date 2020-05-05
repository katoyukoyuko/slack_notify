require "slack-notify"
require 'clockwork'

sample = SlackNotify::Client.new(
  webhook_url: ENV['WEBHOOK'],
  channel: "#rails_dev",
  username: "kato",
  link_names: 1
)

sample.notify("送信できてるよ〜〜", "#rails_dev")

