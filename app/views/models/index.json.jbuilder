json.array!(@models) do |model|
  json.extract! model, :id, :name, :eosl
  json.url model_url(model, format: :json)
end
