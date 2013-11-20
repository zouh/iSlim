json.array!(@nutrition_facts) do |nutrition_fact|
  json.extract! nutrition_fact, :bar_code, :code, :name, :description, :size_unit, :size, :serving_size, :servings, :energy, :energy_unit, :energy_percent, :protein, :protein_percent, :fat, :fat_percent, :carbohydrate, :carbohydrate_percent, :sodium, :sodium_percent, :created_by, :updated_by
  json.url nutrition_fact_url(nutrition_fact, format: :json)
end
