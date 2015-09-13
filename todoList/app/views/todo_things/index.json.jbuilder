json.array!(@todo_things) do |todo_thing|
  json.extract! todo_thing, :id, :title, :description
  json.url todo_thing_url(todo_thing, format: :json)
end
