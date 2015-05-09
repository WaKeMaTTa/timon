json.array!(@categories) do |category|
  json.extract! category, :id, :title
  json.url post_url(category, format: :json)
end
