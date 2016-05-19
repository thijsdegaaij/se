class GrootboekrekeningenController < ApplicationController
  before_action :set_grootboekrekening, only: [:show, :edit, :update, :destroy]

  layout "cms"

  # GET /grootboekrekeningen
  # GET /grootboekrekeningen.json
  def index
    @grootboekrekeningen = Grootboekrekening.all.includes(:organisatie).order("organisaties.naam")
  end

  # GET /grootboekrekeningen/1
  # GET /grootboekrekeningen/1.json
  def show
  end

  # GET /grootboekrekeningen/new
  def new
    @grootboekrekening = Grootboekrekening.new
  end

  # GET /grootboekrekeningen/1/edit
  def edit
  end

  # POST /grootboekrekeningen
  # POST /grootboekrekeningen.json
  def create
    @grootboekrekening = Grootboekrekening.new(grootboekrekening_params)

    respond_to do |format|
      if @grootboekrekening.save
        format.html { redirect_to @grootboekrekening, notice: 'Grootboekrekening was successfully created.' }
        format.json { render :show, status: :created, location: @grootboekrekening }
      else
        format.html { render :new }
        format.json { render json: @grootboekrekening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grootboekrekeningen/1
  # PATCH/PUT /grootboekrekeningen/1.json
  def update
    respond_to do |format|
      if @grootboekrekening.update(grootboekrekening_params)
        format.html { redirect_to @grootboekrekening, notice: 'Grootboekrekening was successfully updated.' }
        format.json { render :show, status: :ok, location: @grootboekrekening }
      else
        format.html { render :edit }
        format.json { render json: @grootboekrekening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grootboekrekeningen/1
  # DELETE /grootboekrekeningen/1.json
  def destroy
    @grootboekrekening.destroy
    respond_to do |format|
      format.html { redirect_to grootboekrekeningen_url, notice: 'Grootboekrekening was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grootboekrekening
      @grootboekrekening = Grootboekrekening.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grootboekrekening_params
      params.require(:grootboekrekening).permit(:naam, :grootboektype_id, :organisatie_id, :icoon)
    end
end
