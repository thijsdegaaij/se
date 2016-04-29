class JournaalsController < ApplicationController
  before_action :set_journaal, only: [:show, :edit, :update, :destroy]

  layout "cms", except: :h_journaal

  # GET /journaals
  # GET /journaals.json
  def index
    @journaals = Journaal.all
  end
  
  def h_journaal

    logger.info("START H_JOURNAAL")
    @org = Organisatie.find(session[:org_id])
    
    # Inkoopboek
    if (params[:jnlink] != nil and params[:jnlink][:id] != "")
      if @org.journaals.first
        @jnl_ink_search = @org.journaals.find(params[:jnlink][:id])
      end
    else
      @jnl_ink_search = @org.journaals.where("journaaltype_id = ?", 1).first
    end
    # Inkoop boekingen
    if @jnl_ink_search
      @bkg_ink_search = @jnl_ink_search.boekingen
    end
    
    # Verkoopboek
    if (params[:jnlverk] != nil and params[:jnlverk][:id] != "")
      if @org.journaals.first
        @jnl_verk_search = @org.journaals.find(params[:jnlverk][:id])
      end
    else
      @jnl_verk_search = @org.journaals.where("journaaltype_id = ?", 2).first
    end
    # Verkoop boekingen
    if @jnl_verk_search
      @bkg_verk_search = @jnl_verk_search.boekingen
    end
    
  end

  # GET /journaals/1
  # GET /journaals/1.json
  def show
  end

  # GET /journaals/new
  def new
    @journaal = Journaal.new
  end

  # GET /journaals/1/edit
  def edit
  end

  # POST /journaals
  # POST /journaals.json
  def create
    @journaal = Journaal.new(journaal_params)

    respond_to do |format|
      if @journaal.save
        format.html { redirect_to @journaal, notice: 'Journaal was successfully created.' }
        format.json { render :show, status: :created, location: @journaal }
      else
        format.html { render :new }
        format.json { render json: @journaal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journaals/1
  # PATCH/PUT /journaals/1.json
  def update
    respond_to do |format|
      if @journaal.update(journaal_params)
        format.html { redirect_to @journaal, notice: 'Journaal was successfully updated.' }
        format.json { render :show, status: :ok, location: @journaal }
      else
        format.html { render :edit }
        format.json { render json: @journaal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journaals/1
  # DELETE /journaals/1.json
  def destroy
    @journaal.destroy
    respond_to do |format|
      format.html { redirect_to journaals_url, notice: 'Journaal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journaal
      @journaal = Journaal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journaal_params
      params.require(:journaal).permit(:organisatie_id, :journaaltype_id, :boeknummer, :datum, :leverancier, :klant, :hoeveelheid, :eenheid, :productnaam, :stukprijs, :betalingswijze, :valuta, :btw_percentage, :bedrag_ex_btw, :bedrag_inc_btw, :voorwaarden)
    end
end
