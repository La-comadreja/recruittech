json.array!(@weasels) do |weasel|
  json.extract! weasel, :id, :name, :color
  json.url weasel_url(weasel, format: :json)
end
