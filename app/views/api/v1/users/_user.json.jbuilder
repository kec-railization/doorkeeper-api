json.cache! user do
  json.first_name     user.first_name
  json.last_name      user.last_name

  json.created_at     user.created_at
  json.updated_at     user.updated_at
end
