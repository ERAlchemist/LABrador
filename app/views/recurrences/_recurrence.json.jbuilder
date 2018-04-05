json.extract! recurrence, :id, :start_time, :recurring, :created_at, :updated_at
json.url recurrence_url(recurrence, format: :json)