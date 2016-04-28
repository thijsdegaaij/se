class ProductenController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  layout "cms"
  
  # GET /producten
  # GET /producten.json
  def index
    @producten = Product.all
  end

  # GET /producten/1
  # GET /producten/1.json
  def show
  end

  # GET /producten/new
  def new
    @product = Product.new
  end

  # GET /producten/1/edit
  def edit
  end

  # POST /producten
  # POST /producten.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producten/1
  # PATCH/PUT /producten/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producten/1
  # DELETE /producten/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to producten_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:naam, :icoon)
    end
end
