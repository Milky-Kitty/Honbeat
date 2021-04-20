class User < ApplicationRecord
    validates :email, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Please enter password' }

    attr_reader :password

    #makes sure we have a token
    after_initialize :ensure_session_token

    #generate a cookie
    def self.generate_session_token
        SecureRandom::urlsaf