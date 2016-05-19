class BoekingenController < ApplicationController
  before_action :set_boeking, only: [:show, :edit, :update, :destroy, :destroy_bkn]

  layout "cms", except: [:create_bkn, :destroy_bkn]

  # GET /boekingen
  # GET /boekingen.json
  def index
    @boekingen = Boeking.all.includes(:organisatie).order("organisaties.naam")
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

  def create_bkn
    logger.debug("Session Variable value: #{session[:jnl_ink_id]} for variable: jnl_ink_id at controller: Boekingen, action: Create_bkn ")
    logger.debug("Session Variable value: #{session[:jnl_verk_id]} for variable: jnl_verk_id at controller: Boekingen, action: create_bkn ")
    logger.debug("Session Variable value: #{session[:jnl_bank_id]} for variable: jnl_bank_id at controller: Boekingen, action: create_bkn ")
    logger.debug("Session Variable value: #{session[:jnl_lev_id]} for variable: jnl_lev_id at controller: Boekingen, action: create_bkn ")
    unless session[:jnl_ink_id] == nil
      @bkg_ink_search = Journaal.find(session[:jnl_ink_id]).boekingen
    end
    unless session[:jnl_verk_id] == nil
      @bkg_verk_search = Journaal.find(session[:jnl_verk_id]).boekingen
    end
    unless session[:jnl_bank_id] == nil
      @bkg_bank_search = Journaal.find(session[:jnl_bank_id]).boekingen
    end
    unless session[:jnl_lev_id] == nil
      @bkg_lev_search = Journaal.find(session[:jnl_lev_id]).boekingen
    end
    unless session[:jnl_intern_id] == nil
      @bkg_intern_search = Journaal.find(session[:jnl_intern_id]).boekingen
    end

    if (params[:boeking][:journaal_id] != nil and params[:boeking][:journaal_id] != "")
      @boeking = Boeking.new(boeking_params)
      respond_to do |format|
        if @boeking.save
          format.js {}
        end
      end
    end
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

  def destroy_bkn
    logger.debug("Session Variable value: #{session[:jnl_ink_id]} for variable: jnl_ink_id at controller: Boekingen, action: Destroy_bkn ")
    logger.debug("Session Variable value: #{session[:jnl_verk_id]} for variable: jnl_verk_id at controller: Boekingen, action: Destroy_bkn ")
    logger.debug("Session Variable value: #{session[:jnl_bank_id]} for variable: jnl_bank_id at controller: Boekingen, action: Destroy_bkn ")
    logger.debug("Session Variable value: #{session[:jnl_lev_id]} for variable: jnl_lev_id at controller: Boekingen, action: Destroy_bkn ")
    @boeking.destroy
    unless session[:jnl_ink_id] == nil
      @bkg_ink_search = Journaal.find(session[:jnl_ink_id]).boekingen
      if @bkg_ink_search.count == 0
        @bkg_ink_search = nil
      end
    end
    unless session[:jnl_verk_id] == nil
      @bkg_verk_search = Journaal.find(session[:jnl_verk_id]).boekingen
      if @bkg_verk_search.count == 0
        @bkg_verk_search = nil
      end
    end
    unless session[:jnl_bank_id] == nil
      @bkg_bank_search = Journaal.find(session[:jnl_bank_id]).boekingen
      if @bkg_bank_search.count == 0
        @bkg_bank_search = nil
      end
    end
    unless session[:jnl_lev_id] == nil
      @bkg_lev_search = Journaal.find(session[:jnl_lev_id]).boekingen
      if @bkg_lev_search.count == 0
        @bkg_lev_search = nil
      end
    end
    
    unless session[:jnl_intern_id] == nil
      @bkg_intern_search = Journaal.find(session[:jnl_intern_id]).boekingen
      if @bkg_intern_search.count == 0
        @bkg_intern_search = nil
      end
    end
  
    respond_to do |format|
      format.js {}
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
      params.require(:boeking).permit(:boekingtype, :organisatie_id, :grootboekrekening_id, :boekproces_id, :journaal_id, :product_id, :datum, :icoon, :bij_af, :waarde, :p_inkoop, :hoeveelheid)
    end
end
