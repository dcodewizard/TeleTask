class Users::RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)

    if resource.save
      set_flash_message! :notice, :signed_up

      otp = generate_otp
      resource.update(otp: otp)

      twilio_service = TwilioService.new
      twilio_service.send_otp(resource.phone_number, otp)

      @user = resource

      redirect_to verify_otp_user_path(@user), notice: 'An OTP is sent to your phone number.'
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  private

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :phone_number)
  end

  def generate_otp
    rand(10000..99990).to_s.rjust(5, '0')
  end
end
