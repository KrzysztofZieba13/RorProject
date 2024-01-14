class User < ApplicationRecord
    has_secure_password 
    # we want to use the password_digest column to store passwords and we want users to compare password and password_confirmation when storing passwords.
    validates :name, presence: true, uniqueness: true
end
