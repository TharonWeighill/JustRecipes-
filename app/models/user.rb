class User < ActiveRecord::Base 
    has_many :recipes
    has_many :comments, through: :recipes 
    has_secure_password
    validates :password, length: {in: 5..30} confirmation: true, on: :create
    validates :username, uniqueness: true, length: {in: 5..30}
    validates :email, presence: true, uniquenss: true, format: {with: /\A(?<username>[^@\S]+)@((?<domain_name>[-a-z0-9]+)\.(?<domain>[-a-z]{2,}))\z/i}

end