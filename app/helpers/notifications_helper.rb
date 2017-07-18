module NotificationsHelper
  def slack_notifier
    notifier = Slack::Notifier.new "https://hooks.slack.com/services/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" do
      defaults channel: "#general",
             username: "parkbot"
    end

    notifier.ping "ParkNarc! Time to move your cars"
    # => will message "Hello default"
    # => to the "#default" channel as 'notifier'
  end

end
