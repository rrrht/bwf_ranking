json.extract! tournament, :id, :name, :grade, :start_date, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
