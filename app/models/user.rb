class User < ActiveRecord::Base

before_save { |user| user.email = email.downcase }
before_save(:create_remember_token)

has_secure_password

validates :name, presence: true, length: { maximum: 30 }
validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
   validates :password, length: { minimum: 6 }
   validates :password_confirmation, presence: true

private
    
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end