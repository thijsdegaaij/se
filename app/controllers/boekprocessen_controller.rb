class BoekprocessenController < ApplicationController
  before_action :set_boekproces, only: [:show, :edit, :update, :destroy]

  layout "cms"

  # GET /boekprocessen
  # GET /boekprocessen.json
  def index
    @boekprocessen = Boekproces.all.order(:naam)
  end

  # GET /boekprocessen/1
  # GET /boekprocessen/1.json
  def show
  end

  # GET /boekprocessen/new
  def new
    @boekproces = Boekproces.new
  end

  # GET /boekprocessen/1/edit
  def edit
  end

  # POST /boekprocessen
  # POST /boekprocessen.json
  def create
    @boekproces = Boekproces.new(boekproces_params)

    respond_to do |format|
      if @boekproces.save
        format.html { redirect_to @boekproces, notice: 'Boekproces was successfully created.' }
        format.json { render :show, status: :created, location: @boekproces }
      else
        format.html { render :new }
        format.json { render json: @boekproces.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boekprocessen/1
  # PATCH/PUT /boekprocessen/1.json
  def update
    respond_to do |format|
      if @boekproces.update(boekproces_params)
        format.html { redirect_to @boekproces, notice: 'Boekproces was successfully updated.' }
        format.json { render :show, status: :ok, location: @boekproces }
      else
        format.html { render :edit }
        format.json { render json: @boekproces.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boekprocessen/1
  # DELETE /boekprocessen/1.json
  def destroy
    @boekproces.destroy
    respond_to do |format|
      format.html { redirect_to boekprocessen_url, notice: 'Boekproces was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boekproces
      @boekproces = Boekproces.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boekproces_params
      params.require(:boekproces).permit(:naam, :icoon)
    end
end
