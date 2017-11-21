class UserSoftware < ApplicationRecord
  belongs_to :user
  belongs_to :software
end
