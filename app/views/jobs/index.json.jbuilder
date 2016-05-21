json.array!(@jobs) do |job|
  json.extract! job, :id, :job_id, :location, :description, :due_by, :created, :priority
  json.url job_url(job, format: :json)
end
