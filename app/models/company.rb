class Company < ApplicationRecord
    has_many :managers
    has_many :complaintants, through: :managers
    has_many :incidents, through: :complaintants
    has_many :aggressors, through: :incidents

    validates :name, presence: true
end
