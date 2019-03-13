class User < ApplicationRecord
:omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
