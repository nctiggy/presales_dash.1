json.array!(@vmaxes) do |vmax|
  json.extract! vmax, :id, :serial_number, :system_name, :enginuity_code, :target_code, :ship_date, :install_date, :esrs_enabled, :contract_number, :contract_expiration, :raw_tb, :engine_count, :openscale, :site_id, :model_id
  json.url vmax_url(vmax, format: :json)
end
