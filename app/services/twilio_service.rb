class TwilioService
  def initialize
    @client = Twilio::REST::Client.new(
      ENV['TWILIO_ACCOUNT_SID'],
      ENV['TWILIO_AUTH_TOKEN']
    )
  end

  def send_otp(phone_number, otp)
    message = "Your OTP is: #{otp}"

    @client.messages.create(
      body: message,
      from: ENV['TWILIO_FROM_NUMBER'],
      to: phone_number
    )
  end
end
