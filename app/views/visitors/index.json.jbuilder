json.array!(@visitors) do |visitor|
  json.extract! visitor, :id, :name, :email, :comment
  json.url visitor_url(visitor, format: :json)
end
