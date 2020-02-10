class User < ApplicationRecord
    has_secure_password

    has_many :readings
    has_many :books, through: :readings
end
