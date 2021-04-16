class User < ApplicationRecord
    validates :email, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Please enter password' }

    attr_reader :passwor