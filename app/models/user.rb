class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  validates :phone_number, presence: true

  def valid_otp?(entered_otp)
    return false if otp.nil? || verified?

    otp == entered_otp
  end
end
