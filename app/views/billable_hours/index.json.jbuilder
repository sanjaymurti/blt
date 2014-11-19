json.array!(@billable_hours) do |billable_hour|
  json.extract! billable_hour, :id, :description, :start, :end, :project_id
  json.url billable_hour_url(billable_hour, format: :json)
end
