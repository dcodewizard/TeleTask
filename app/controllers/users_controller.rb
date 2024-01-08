class UsersController < ApplicationController
  before_action :authenticate_user!

  def verify_otp
    @user = current_user
  end

  def process_otp_verification
    entered_otp = params[:user][:otp_code]
    @user = current_user
    if current_user.valid_otp?(entered_otp)
      current_user.update(verified: true)
      redirect_to root_path, notice: 'OTP verification successful. Your account is now verified.'
    else
      flash[:alert] = 'Invalid OTP. Please try again.'
      render :verify_otp
    end
  end
end
