class Incident < ApplicationRecord
    belongs_to :complaintant
    belongs_to :aggressor
    # has_one :manager, through: :complaintants
    # has_one :company, through: :manager

    # validates :complaintant_id, presence: true
    # validates :aggressor_id, presence: true
    # validates :severity, presence: true 
    # validates :description, presence: true
    # # validates :datetime, presence: true
    # validates :location, presence: true
end
