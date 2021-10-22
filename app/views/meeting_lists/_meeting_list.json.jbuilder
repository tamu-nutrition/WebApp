json.extract! meeting_list, :id, :meeting_id, :meeting_name, :date, :location, :start_time, :created_at, :updated_at
json.url meeting_list_url(meeting_list, format: :json)
