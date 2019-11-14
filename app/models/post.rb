class Post < ApplicationRecord
    after_create :notify_slack

  def notify_slack
    SlackNotifier::CLIENT.ping "🎉 Name: #{name}, Content #{content} 🎉"
  end
end
