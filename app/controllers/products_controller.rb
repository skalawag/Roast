class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter :set_order
  
  def index
    @products = @profile.products
  end

  # GET /product/1
  # GET /product/1.json
  def show
  end

  # GET /product/new
  def new
    @product = Product.new
  end

  # GET /product/1/edit
  def edit
  end

  # POST /product
  # POST /product.json
  def create
    @product = Product.new(product_params, profile_id: @profile_id)

    respond_to do |format|
      if @product.save
        format.html { redirect_to profile_path(@profile), notice: "#{Bean.find(@product.bean_id).name} was successfully added to the profile." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product/1
  # PATCH/PUT /product/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to profile_path(@profile), notice: "#{Bean.find(@product.bean_id).name} was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product/1
  # DELETE /product/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to profile_path(@profile), notice: "#{Bean.find(@product.bean_id).name} was successfully removed from the profile." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_order
      @order = Order.find(params[:order_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:profile_id, :bean_id, :quantity)
    end
end