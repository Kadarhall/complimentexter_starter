require 'twilio-ruby'

class Notification
  attr_accessor :to_number

  def initialize(options={})
    self.to_number = options[:to_number]
    account_sid = ENV["twilio_sid"]
    auth_token =  ENV["twilio_token"]
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def text
    # Sends a text to your phone number
     @client.messages.create(
      from: '+18048237502',
      to: '+18043572774',
      body: random_compliment
    )
  end

  def random_compliment
    compliments = ["You don't commit to anything but GitHub", "Allison sleeps alot she's narcoleptic and a functioning alcoholic", "You can't spell MO without motivation", "You love GA", "You're altruistic"].sample#enter compliments there
    # Generates a random compliment to send to the textee
  end
end