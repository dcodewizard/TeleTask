class AddOtpAndVerifiedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :otp, :string
    add_column :users, :verified, :boolean
  end
end
