class User < ApplicationRecord
  has_secure_password
  has_many :user_softwares, dependent: :destroy
  has_many :softwares, through: :user_softwares

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
