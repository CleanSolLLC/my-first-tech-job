json.extract! opportunity, :id, :name, :type, :description, :due, :created_at, :updated_at
json.url opportunity_url(opportunity, format: :json)
