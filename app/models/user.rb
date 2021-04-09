class User < ApplicationRecord
    validates :email, :session_token, presence: tru