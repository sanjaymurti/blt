json.array!(@tasks) do |task|
  json.extract! task, :id, :task, :project_id
  json.url task_url(task, format: :json)
end
