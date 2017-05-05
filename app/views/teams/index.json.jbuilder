json.array!(@teams) do |team|
  json.extract! team, :id, :city, :name
  json.url team_url(team, format: :json)
end
