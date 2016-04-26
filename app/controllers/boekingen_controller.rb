class BoekingenController < ApplicationController
  before_action :set_boeking, only: [:show, :edit, :update, :destroy]

  # GET /boekingen
  # GET /boekingen.json
  def index
    @boekingen = Boeking.all
  end

  # GET /boekingen/1
  # GET /boekingen/1.json
  def show
  end

  # GET /boekingen/new
  def new
    @boeking = Boeking.new
  end

  # GET /boekingen/1/edit
  def edit
  end

  # POST /boekingen
  # POST /boekingen.json
  def create
    @boeking = Boeking.new(boeking_params)

    respond_to do |format|
      if @boeking.save
        format.html { redirect_to @boeking, notice: 'Boeking was successfully created.' }
        format.json { render :show, status: :created, location: @boeking }
      else
        format.html { render :new }
        format.json { render json: @boeking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boekingen/1
  # PATCH/PUT /boekingen/1.json
  def update
    respond_to do |format|
      if @boeking.update(boeking_params)
        format.html { redirect_to @boeking, notice: 'Boeking was successfully updated.' }
        format.json { render :show, status: :ok, location: @boeking }
      else
        format.html { render :edit }
        format.json { render json: @boeking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boekingen/1
  # DELETE /boekingen/1.json
  def destroy
    @boeking.destroy
    respond_to do |format|
      format.html { redirect_to boekingen_url, notice: 'Boeking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boeking
      @boeking = Boeking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boeking_params
      params.require(:boeking).permit(:grootboekrekening_id, :journaal_id, :product_id, :datum, :icoon, :bij_af, :waarde, :p_inkoop, :hoeveelheid)
    end
end
