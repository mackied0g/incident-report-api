class Manager < ApplicationRecord
    belongs_to :company
    has_many :complaintants
    has_many :incidents, through: :complaintants

    validates :company_id, presence: true
    validates :email, presence: true
    validates :name, presence: true
    validates :title, presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :race, presence: true
end
