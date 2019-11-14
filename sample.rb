require 'slack-notifier'
require 'clockwork'

# You will be able to use a method to indicate time, such as minutes, if you require the gem below, so it is recommended to write it.

require 'active_support/time'

module Clockwork
  handler do |send|
    notifier = Slack::Notifier.new('https://hooks.slack.com/services/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')
    notifier.ping('Congulatulation you have set notification on slack')
  end
  every(3.seconds, 'send')
end