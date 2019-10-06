class Aggressor < ApplicationRecord
    has_many :incidents
    
    
    validates :issuecount, presence: true
    validates :name, presence: true
    validates :title, presence: true
    validates :gender, presence: true
    validates :age, presence: true
    validates :race, presence: true
    validates :email, presence: true
end
