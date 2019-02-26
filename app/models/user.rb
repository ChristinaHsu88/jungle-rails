class User < ActiveRecord::Base
    has_secure_password
    
    def self.authenticate_with_credentials(email, password) 
        email = email.strip
        User.find_by(email: email).try(:authenticate, password)
    end

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true, confirmation: { case_sensitive: false }
    validates :password, presence: true,  length: { minimum: 1 }

end