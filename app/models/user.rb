class User < ActiveRecord::Base 
    has_many :recipes
    has_many :comments, through: :recipes 
    # has_secure_password
    # validates :password, length: {in: 5..30}, confirmation: true, on: :create
    # validates :username, uniqueness:{:message => "Username already exists."}, length: {in: 5..30}
    # validates :email, presence: true, uniqueness:{:message => "Email already exists."}, format: {with: /\A(?<username>[^@\S]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[-a-z]{2,}))\z/i}

end