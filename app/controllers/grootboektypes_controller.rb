class GrootboektypesController < ApplicationController
  before_action :set_grootboektype, only: [:show, :edit, :update, :destroy]

  # GET /grootboektypes
  # GET /grootboektypes.json
  def index
    @grootboektypes = Grootboektype.all
  end

  # GET /grootboektypes/1
  # GET /grootboektypes/1.json
  def show
  end

  # GET /grootboektypes/new
  def new
    @grootboektype = Grootboektype.new
  end

  # GET /grootboektypes/1/edit
  def edit
  end

  # POST /grootboektypes
  # POST /grootboektypes.json
  def create
    @grootboektype = Grootboektype.new(grootboektype_params)

    respond_to do |format|
      if @grootboektype.save
        format.html { redirect_to @grootboektype, notice: 'Grootboektype was successfully created.' }
        format.json { render :show, status: :created, location: @grootboektype }
      else
        format.html { render :new }
        format.json { render json: @grootboektype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grootboektypes/1
  # PATCH/PUT /grootboektypes/1.json
  def update
    respond_to do |format|
      if @grootboektype.update(grootboektype_params)
        format.html { redirect_to @grootboektype, notice: 'Grootboektype was successfully updated.' }
        format.json { render :show, status: :ok, location: @grootboektype }
      else
        format.html { render :edit }
        format.json { render json: @grootboektype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grootboektypes/1
  # DELETE /grootboektypes/1.json
  def destroy
    @grootboektype.destroy
    respond_to do |format|
      format.html { redirect_to grootboektypes_url, notice: 'Grootboektype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grootboektype
      @grootboektype = Grootboektype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grootboektype_params
      params.require(:grootboektype).permit(:naam, :icoon)
    end
end
