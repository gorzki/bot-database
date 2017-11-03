json.extract! recipe, :id, :short, :name, :grade, :mats, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
