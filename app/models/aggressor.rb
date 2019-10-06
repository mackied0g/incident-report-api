class Aggressor < ApplicationRecord
    has_many :incidents
    belongs_to :manager
    
    validates :manager_id, presence: true
    validates :issuecount, presence: true
    validates :name, presence: true
    validates :title, presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :race, presence: true
    validates :email, presence: true
end
