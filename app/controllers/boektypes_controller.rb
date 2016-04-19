class BoektypesController < ApplicationController
  before_action :set_boektype, only: [:show, :edit, :update, :destroy]

  # GET /boektypes
  # GET /boektypes.json
  def index
    @boektypes = Boektype.all
  end

  # GET /boektypes/1
  # GET /boektypes/1.json
  def show
  end

  # GET /boektypes/new
  def new
    @boektype = Boektype.new
  end

  # GET /boektypes/1/edit
  def edit
  end

  # POST /boektypes
  # POST /boektypes.json
  def create
    @boektype = Boektype.new(boektype_params)

    respond_to do |format|
      if @boektype.save
        format.html { redirect_to @boektype, notice: 'Boektype was successfully created.' }
        format.json { render :show, status: :created, location: @boektype }
      else
        format.html { render :new }
        format.json { render json: @boektype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boektypes/1
  # PATCH/PUT /boektypes/1.json
  def update
    respond_to do |format|
      if @boektype.update(boektype_params)
        format.html { redirect_to @boektype, notice: 'Boektype was successfully updated.' }
        format.json { render :show, status: :ok, location: @boektype }
      else
        format.html { render :edit }
        format.json { render json: @boektype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boektypes/1
  # DELETE /boektypes/1.json
  def destroy
    @boektype.destroy
    respond_to do |format|
      format.html { redirect_to boektypes_url, notice: 'Boektype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boektype
      @boektype = Boektype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boektype_params
      params.require(:boektype).permit(:naam)
    end
end
