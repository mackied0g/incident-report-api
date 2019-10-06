class Incident < ApplicationRecord
    has_many :complaintants
    has_many :aggressors

    validates :complaintant_id, presence: true
    validates :aggressor_id, presence: true
    validates :severity, presence: true 
    validates :issuetype_id, presence: true
    validates :description, presence: true
    validates :datetime, presence: true
    validates :location, presence: true
end
