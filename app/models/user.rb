class User < ApplicationRecord
    validates :email, :session_token, presence: true, uniqueness: true
    validates :password_digest, presence: { message: 'Please enter password' }

    attr_reader :password

    #makes sure we have a token
    after_initialize :ensure_session_token

    #generate a cookie
    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end

    def reset_session_token!
        #reset a new session token
        self.session_token = User.generate_session_token
        #attempt to save
        self.save!
        #return new session token
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= User.generate_session_token
    end

    def password=(password)
        @password = password
        #salting password
     