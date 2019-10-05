class Incident < ApplicationRecord
    has_many :complaintants
    has_many :aggressors
end
