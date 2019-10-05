class Complaintant < ApplicationRecord
    has_many :incidents
    belongs_to :managers
    has_many :aggressors, through: :incidents
end
