class Company < ApplicationRecord
    has_many :managers

    validates :name, presence: true
end
