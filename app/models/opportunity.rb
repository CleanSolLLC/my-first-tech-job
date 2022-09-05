class Opportunity < ApplicationRecord
    has_many :user_opportunities
    has_many :users, through: :user_opportunities

    validates :name, presence: true
    validates :opportunity_type, presence: true
end
