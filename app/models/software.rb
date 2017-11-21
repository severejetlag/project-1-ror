class Software < ApplicationRecord
  has_many :user_softwares, dependent: :destroy
  has_many :users, through: :user_softwares
end
