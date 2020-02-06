class User < ApplicationRecord
    has_many :readings
    has_many :books, through: :readings
end
