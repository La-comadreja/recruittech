json.array!(@predators) do |predator|
  json.extract! predator, :id, :name, :teeth_size
  json.url predator_url(predator, format: :json)
end
