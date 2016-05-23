class JournaaltypesController < ApplicationController
  before_action :set_journaaltype, only: [:show, :edit, :update, :destroy]

  layout "cms"
  
  # GET /journaaltypes
  # GET /journaaltypes.json
  def index
    @journaaltypes = Journaaltype.all.order(:naam)
  end

  # GET /journaaltypes/1
  # GET /journaaltypes/1.json
  def show
  end

  # GET /journaaltypes/new
  def new
    @journaaltype = Journaaltype.new
  end

  # GET /journaaltypes/1/edit
  def edit
  end

  # POST /journaaltypes
  # POST /journaaltypes.json
  def create
    @journaaltype = Journaaltype.new(journaaltype_params)

    respond_to do |format|
      if @journaaltype.save
        format.html { redirect_to @journaaltype, notice: 'Journaaltype was successfully created.' }
        format.json { render :show, status: :created, location: @journaaltype }
      else
        format.html { render :new }
        format.json { render json: @journaaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journaaltypes/1
  # PATCH/PUT /journaaltypes/1.json
  def update
    respond_to do |format|
      if @journaaltype.update(journaaltype_params)
        format.html { redirect_to @journaaltype, notice: 'Journaaltype was successfully updated.' }
        format.json { render :show, status: :ok, location: @journaaltype }
      else
        format.html { render :edit }
        format.json { render json: @journaaltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journaaltypes/1
  # DELETE /journaaltypes/1.json
  def destroy
    @journaaltype.destroy
    respond_to do |format|
      format.html { redirect_to journaaltypes_url, notice: 'Journaaltype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journaaltype
      @journaaltype = Journaaltype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journaaltype_params
      params.require(:journaaltype).permit(:naam, :icoon)
    end
end
