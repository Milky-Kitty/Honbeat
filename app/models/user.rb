class User < ApplicationRecord
    validates :email, :session_token, presence: true, uniqueness: true
    validates :passwor