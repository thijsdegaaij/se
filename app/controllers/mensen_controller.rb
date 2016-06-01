class MensenController < ApplicationController
  before_action :set_mens, only: [:show, :edit, :update, :destroy]

  layout "cms"

  # GET /mensen
  # GET /mensen.json
  def index
    @mensen = Mens.all
  end

  # GET /mensen/1
  # GET /mensen/1.json
  def show
  end

  # GET /mensen/new
  def new
    @mens = Mens.new
  end

  # GET /mensen/1/edit
  def edit
  end

  # POST /mensen
  # POST /mensen.json
  def create
    @mens = Mens.new(mens_params)

    respond_to do |format|
      if @mens.save
        format.html { redirect_to @mens, notice: 'Mens was successfully created.' }
        format.json { render :show, status: :created, location: @mens }
      else
        format.html { render :new }
        format.json { render json: @mens.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mensen/1
  # PATCH/PUT /mensen/1.json
  def update
    respond_to do |format|
      if @mens.update(mens_params)
        format.html { redirect_to @mens, notice: 'Mens was successfully updated.' }
        format.json { render :show, status: :ok, location: @mens }
      else
        format.html { render :edit }
        format.json { render json: @mens.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensen/1
  # DELETE /mensen/1.json
  def destroy
    @mens.destroy
    respond_to do |format|
      format.html { redirect_to mensen_url, notice: 'Mens was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mens
      @mens = Mens.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mens_params
      params.require(:mens).permit(:naam, :leeftijd, :geslacht, :kennisniveau, :gezondheidsniveau, :geluksniveau)
    end
end
