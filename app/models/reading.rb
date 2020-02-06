class Reading < ApplicationRecord
    belongs_to :book
    belongs_to :user
    has_one :review
end
