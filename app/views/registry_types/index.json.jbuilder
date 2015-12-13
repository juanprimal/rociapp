json.array!(@registry_types) do |registry_type|
  json.extract! registry_type, :id, :name
  json.url registry_type_url(registry_type, format: :json)
end
