json.array!(@login_modules) do |login_module|
  json.extract! login_module, :id
  json.url login_module_url(login_module, format: :json)
end
