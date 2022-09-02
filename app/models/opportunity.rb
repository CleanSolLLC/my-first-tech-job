class Opportunity < ApplicationRecord
    has_many :user_opportuniuties
    has_many :users, through: :user_opportuniuties
end
