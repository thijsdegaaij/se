class JournaalsController < ApplicationController
  before_action :set_journaal, only: [:show, :edit, :update, :destroy]

  layout "cms", except: :h_journaal

  # GET /journaals
  # GET /journaals.json
  def index
    @journaals = Journaal.all.order(:journaaltype_id).includes(:organisatie).order("organisaties.naam")
  end
  
  def h_journaal

    @org = Organisatie.find(session[:org_id])
    session[:jnl_verk_id] = nil
    session[:jnl_ink_id] = nil
    session[:jnl_bank_id] = nil
    session[:jnl_lev_id] = nil
    session[:jnl_intern_id] = nil
        
    
    # Verkoopboek
    if (params[:jnlverk] != nil and params[:jnlverk][:id] != "")
      if @org.journaals.first
        @jnl_verk_search = @org.journaals.find(params[:jnlverk][:id])
        session[:jnl_verk_id] = @jnl_verk_search.id
      end
    else
      @jnl_verk_search = @org.journaals.where("journaaltype_id = ?", 2).first
      if @jnl_verk_search
        session[:jnl_verk_id] = @jnl_verk_search.id
      end
    end
    # Verkoop boekingen
    if @jnl_verk_search
      @bkg_verk_search = @jnl_verk_search.boekingen
      if @bkg_verk_search.count == 0
        @bkg_verk_search = nil
      end
    end
    
    # Inkoopboek
    if (params[:jnlink] != nil and params[:jnlink][:id] != "")
      if @org.journaals.first
        @jnl_ink_search = @org.journaals.find(params[:jnlink][:id])
        session[:jnl_ink_id] = @jnl_ink_search.id
      end
    else
      @jnl_ink_search = @org.journaals.where("journaaltype_id = ?", 1).first
      if @jnl_ink_search
        session[:jnl_ink_id] = @jnl_ink_search.id
      end
    end
    # Inkoop boekingen
    if @jnl_ink_search
      @bkg_ink_search = @jnl_ink_search.boekingen
      if @bkg_ink_search.count == 0
        @bkg_ink_search = nil
      end
    end
    # Bankboek
    if (params[:jnlbank] != nil and params[:jnlbank][:id] != "")
      if @org.journaals.first
        @jnl_bank_search = @org.journaals.find(params[:jnlbank][:id])
        session[:jnl_bank_id] = @jnl_bank_search.id
      end
    else
      @jnl_bank_search = @org.journaals.where("journaaltype_id = ?", 3).first
      if @jnl_bank_search
        session[:jnl_bank_id] = @jnl_bank_search.id
      end
    end
    # Bank boekingen
    if @jnl_bank_search
      @bkg_bank_search = @jnl_bank_search.boekingen
      if @bkg_bank_search.count == 0
        @bkg_bank_search = nil
      end
    end
 
   # Leveringen
   if (params[:jnllev] != nil and params[:jnllev][:id] != "")
     if @org.journaals.first
       @jnl_lev_search = @org.journaals.find(params[:jnllev][:id])
       session[:jnl_lev_id] = @jnl_lev_search.id
     end
   else
     @jnl_lev_search = @org.journaals.where("journaaltype_id = ?", 4).first
     if @jnl_lev_search
       session[:jnl_lev_id] = @jnl_lev_search.id
     end
   end
   # Levering boekingen
   if @jnl_lev_search
     @bkg_lev_search = @jnl_lev_search.boekingen
     if @bkg_lev_search.count == 0
       @bkg_lev_search = nil
     end
   end
   
   # Intern
   if (params[:jnlintern] != nil and params[:jnlintern][:id] != "")
     if @org.journaals.first
       @jnl_intern_search = @org.journaals.find(params[:jnlintern][:id])
       session[:jnl_intern_id] = @jnl_intern_search.id
       logger.debug("IS GEZET")
     end
   else
     @jnl_intern_search = @org.journaals.where("journaaltype_id = ?", 5).first
     if @jnl_intern_search
       session[:jnl_intern_id] = @jnl_intern_search.id
     end
   end
   # Intern boekingen
   if @jnl_intern_search
     @bkg_intern_search = @jnl_intern_search.boekingen
     if @bkg_intern_search.count == 0
       @bkg_intern_search = nil
     end
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
