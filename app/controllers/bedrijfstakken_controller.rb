class BedrijfstakkenController < ApplicationController
  before_action :set_bedrijfstak, only: [:show, :edit, :update, :destroy]

  # GET /bedrijfstakken
  # GET /bedrijfstakken.json
  def index
    @bedrijfstakken = Bedrijfstak.all
  end

  # GET /bedrijfstakken/1
  # GET /bedrijfstakken/1.json
  def show
  end

  # GET /bedrijfstakken/new
  def new
    @bedrijfstak = Bedrijfstak.new
  end

  # GET /bedrijfstakken/1/edit
  def edit
  end

  # POST /bedrijfstakken
  # POST /bedrijfstakken.json
  def create
    @bedrijfstak = Bedrijfstak.new(bedrijfstak_params)

    respond_to do |format|
      if @bedrijfstak.save
        format.html { redirect_to @bedrijfstak, notice: 'Bedrijfstak was successfully created.' }
        format.json { render :show, status: :created, location: @bedrijfstak }
      else
        format.html { render :new }
        format.json { render json: @bedrijfstak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bedrijfstakken/1
  # PATCH/PUT /bedrijfstakken/1.json
  def update
    respond_to do |format|
      if @bedrijfstak.update(bedrijfstak_params)
        format.html { redirect_to @bedrijfstak, notice: 'Bedrijfstak was successfully updated.' }
        format.json { render :show, status: :ok, location: @bedrijfstak }
      else
        format.html { render :edit }
        format.json { render json: @bedrijfstak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bedrijfstakken/1
  # DELETE /bedrijfstakken/1.json
  def destroy
    @bedrijfstak.destroy
    respond_to do |format|
      format.html { redirect_to bedrijfstakken_url, notice: 'Bedrijfstak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bedrijfstak
      @bedrijfstak = Bedrijfstak.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bedrijfstak_params
      params.require(:bedrijfstak).permit(:naam)
    end
end
