class Manager < ApplicationRecord
    belongs_to :company
    has_many :complaintants
    has_many :incidents, through: :complaintants
end
