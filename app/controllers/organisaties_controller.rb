class OrganisatiesController < ApplicationController
  before_action :set_organisatie, only: [:show, :edit, :update, :destroy]

  # GET /organisaties
  # GET /organisaties.json
  def index
    @organisaties = Organisatie.all
  end

  def h_organisatie
    
    if (params[:organisatie] != nil and params[:organisatie][:id] != "")
      @organisatie_search = Organisatie.find(params[:organisatie][:id])
      @gbr_va = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 1)
    end
    
  end
  
  # GET /organisaties/1
  # GET /organisaties/1.json
  def show
  end

  # GET /organisaties/new
  def new
    @organisatie = Organisatie.new
  end

  # GET /organisaties/1/edit
  def edit
  end

  # POST /organisaties
  # POST /organisaties.json
  def create
    @organisatie = Organisatie.new(organisatie_params)

    respond_to do |format|
      if @organisatie.save
        format.html { redirect_to @organisatie, notice: 'Organisatie was successfully created.' }
        format.json { render :show, status: :created, location: @organisatie }
      else
        format.html { render :new }
        format.json { render json: @organisatie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organisaties/1
  # PATCH/PUT /organisaties/1.json
  def update
    respond_to do |format|
      if @organisatie.update(organisatie_params)
        format.html { redirect_to @organisatie, notice: 'Organisatie was successfully updated.' }
        format.json { render :show, status: :ok, location: @organisatie }
      else
        format.html { render :edit }
        format.json { render json: @organisatie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organisaties/1
  # DELETE /organisaties/1.json
  def destroy
    @organisatie.destroy
    respond_to do |format|
      format.html { redirect_to organisaties_url, notice: 'Organisatie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organisatie
      @organisatie = Organisatie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def organisatie_params
      params.require(:organisatie).permit(:naam, :bedrijfstak_id, :rechtsvorm_id, :voorkant_image)
    end
end
