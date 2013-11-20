require 'test_helper'

class NutritionFactsControllerTest < ActionController::TestCase
  setup do
    @nutrition_fact = nutrition_facts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nutrition_facts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nutrition_fact" do
    assert_difference('NutritionFact.count') do
      post :create, nutrition_fact: { bar_code: @nutrition_fact.bar_code, carbohydrate: @nutrition_fact.carbohydrate, carbohydrate_percent: @nutrition_fact.carbohydrate_percent, code: @nutrition_fact.code, created_by: @nutrition_fact.created_by, description: @nutrition_fact.description, energy: @nutrition_fact.energy, energy_percent: @nutrition_fact.energy_percent, energy_unit: @nutrition_fact.energy_unit, fat: @nutrition_fact.fat, fat_percent: @nutrition_fact.fat_percent, name: @nutrition_fact.name, protein: @nutrition_fact.protein, protein_percent: @nutrition_fact.protein_percent, serving_size: @nutrition_fact.serving_size, servings: @nutrition_fact.servings, size: @nutrition_fact.size, size_unit: @nutrition_fact.size_unit, sodium: @nutrition_fact.sodium, sodium_percent: @nutrition_fact.sodium_percent, updated_by: @nutrition_fact.updated_by }
    end

    assert_redirected_to nutrition_fact_path(assigns(:nutrition_fact))
  end

  test "should show nutrition_fact" do
    get :show, id: @nutrition_fact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nutrition_fact
    assert_response :success
  end

  test "should update nutrition_fact" do
    patch :update, id: @nutrition_fact, nutrition_fact: { bar_code: @nutrition_fact.bar_code, carbohydrate: @nutrition_fact.carbohydrate, carbohydrate_percent: @nutrition_fact.carbohydrate_percent, code: @nutrition_fact.code, created_by: @nutrition_fact.created_by, description: @nutrition_fact.description, energy: @nutrition_fact.energy, energy_percent: @nutrition_fact.energy_percent, energy_unit: @nutrition_fact.energy_unit, fat: @nutrition_fact.fat, fat_percent: @nutrition_fact.fat_percent, name: @nutrition_fact.name, protein: @nutrition_fact.protein, protein_percent: @nutrition_fact.protein_percent, serving_size: @nutrition_fact.serving_size, servings: @nutrition_fact.servings, size: @nutrition_fact.size, size_unit: @nutrition_fact.size_unit, sodium: @nutrition_fact.sodium, sodium_percent: @nutrition_fact.sodium_percent, updated_by: @nutrition_fact.updated_by }
    assert_redirected_to nutrition_fact_path(assigns(:nutrition_fact))
  end

  test "should destroy nutrition_fact" do
    assert_difference('NutritionFact.count', -1) do
      delete :destroy, id: @nutrition_fact
    end

    assert_redirected_to nutrition_facts_path
  end
end
