class Complaintant < ApplicationRecord
    has_many :incidents
    belongs_to :managers
    has_many :aggressors, through: :incidents

    validates :manager_id, presence: true
    validates :email, presence: true
    validates :name, presence: true
    validates :employeenum, presence: true
    validates :title, presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :race, presence: true
end
