require 'clockwork'
require "slack-notify"

include Clockwork

handler do |job|

    sample = SlackNotify::Client.new(
    webhook_url: ENV['WEBHOOK'],
    channel: "#rails_dev",
    username: "kato",
    link_names: 1
    )

    sample.notify("3分に1回送られるよ", "#rails_dev")
end

# every(10.seconds, 'frequent.job')
every(3.minutes, 'less.frequent.job')
# every(1.hour, 'hourly.job')

# every(1.day, 'midnight.job', :at => '00:00')
