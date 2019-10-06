class Complaintant < ApplicationRecord
    belongs_to :manager
    has_many :incidents
    has_many :aggressors, through: :incidents

    validates :manager_id, presence: true
    validates :email, presence: true
    validates :name, presence: true
    validates :title, presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :race, presence: true
end
