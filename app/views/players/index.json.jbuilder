json.array!(@players) do |player|
  json.extract! player, :id, :surname, :given_name, :position, :at_bat, :runs, :hits, :rbi, :steals, :errors, :walks
  json.url player_url(player, format: :json)
end
