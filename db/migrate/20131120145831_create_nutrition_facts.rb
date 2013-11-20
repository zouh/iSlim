class CreateNutritionFacts < ActiveRecord::Migration
  def change
    create_table :nutrition_facts do |t|
      t.string :bar_code
      t.string :code
      t.string :name
      t.text :description
      t.string :size_unit
      t.decimal :size
      t.decimal :serving_size
      t.decimal :servings
      t.decimal :energy
      t.string :energy_unit
      t.integer :energy_percent
      t.decimal :protein
      t.integer :protein_percent
      t.decimal :fat
      t.integer :fat_percent
      t.decimal :carbohydrate
      t.integer :carbohydrate_percent
      t.decimal :sodium
      t.integer :sodium_percent
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
