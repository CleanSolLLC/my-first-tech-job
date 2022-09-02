class Opportunity < ApplicationRecord
    has_many :user_opportunities
    has_many :users, through: :user_opportunities
end
