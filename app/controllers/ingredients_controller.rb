class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy]
  
  def index
    @ingredients = Ingredient.all
  end

  # GET /ingredient/1
  # GET /ingredient/1.json
  def show
  end

  # GET /ingredient/new
  def new
  	@profile = Profile.find(params[:profile_id])
    @ingredient = Ingredient.new
  end

  # GET /ingredient/1/edit
  def edit
  end

  # POST /ingredient
  # POST /ingredient.json
  def create
  	@profile = Profile.find(params[:profile_id])
    @ingredient = Ingredient.new(ingredient_params, profile_id: @profile_id)

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to profile_path(@profile), notice: 'Ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @ingredient }
      else
        format.html { render :new }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredient/1
  # PATCH/PUT /ingredient/1.json
  def update
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        format.html { redirect_to profile_path(@profile), notice: 'Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingredient }
      else
        format.html { render :edit }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredient/1
  # DELETE /ingredient/1.json
  def destroy
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to redirect_to profile }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @profile = Profile.find(params[:profile_id])
      @ingredient = Ingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredient_params
      params.require(:ingredient).permit(:profile_id, :bean_id, :quantity)
    end
end