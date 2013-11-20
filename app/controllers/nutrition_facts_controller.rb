class NutritionFactsController < ApplicationController
  before_action :set_nutrition_fact, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "sa", password: "p@ssw0rds"

  # GET /nutrition_facts
  # GET /nutrition_facts.json
  def index
    @nutrition_facts = NutritionFact.all
  end

  # GET /nutrition_facts/1
  # GET /nutrition_facts/1.json
  def show
    @nutrition_fact = NutritionFact.find(params[:id])
  end

  # GET /nutrition_facts/new
  def new
    @nutrition_fact = NutritionFact.new
  end

  # GET /nutrition_facts/1/edit
  def edit
    @nutrition_fact = NutritionFact.find(params[:id])
  end

  # POST /nutrition_facts
  # POST /nutrition_facts.json
  def create
    @nutrition_fact = NutritionFact.new(nutrition_fact_params)

    respond_to do |format|
      if @nutrition_fact.save
        format.html { redirect_to @nutrition_fact, notice: 'Nutrition fact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @nutrition_fact }
      else
        format.html { render action: 'new' }
        format.json { render json: @nutrition_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nutrition_facts/1
  # PATCH/PUT /nutrition_facts/1.json
  def update
    respond_to do |format|
      if @nutrition_fact.update(nutrition_fact_params)
        format.html { redirect_to @nutrition_fact, notice: 'Nutrition fact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @nutrition_fact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutrition_facts/1
  # DELETE /nutrition_facts/1.json
  def destroy
    @nutrition_fact.destroy
    respond_to do |format|
      format.html { redirect_to nutrition_facts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nutrition_fact
      @nutrition_fact = NutritionFact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nutrition_fact_params
      params.require(:nutrition_fact).permit(:bar_code, :code, :name, :description, :size_unit, :size, :serving_size, :servings, :energy, :energy_unit, :energy_percent, :protein, :protein_percent, :fat, :fat_percent, :carbohydrate, :carbohydrate_percent, :sodium, :sodium_percent, :created_by, :updated_by)
    end
end
