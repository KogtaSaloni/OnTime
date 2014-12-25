json.array!(@on_times) do |on_time|
  json.extract! on_time, :id, :Task, :Deadline
  json.url on_time_url(on_time, format: :json)
end
