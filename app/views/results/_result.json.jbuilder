json.extract! result, :id, :player_id, :tournament_id, :round, :points, :created_at, :updated_at
json.url result_url(result, format: :json)
