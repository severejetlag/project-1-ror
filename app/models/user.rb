class User < ApplicationRecord
  has_many :user_softwares, dependent: :destroy
  has_many :softwares, through: :user_softwares
end
