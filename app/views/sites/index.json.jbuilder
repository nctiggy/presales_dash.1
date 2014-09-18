json.array!(@sites) do |site|
  json.extract! site, :id, :city, :site_id, :state, :street, :ce_email
  json.url site_url(site, format: :json)
end
