class OrganisatiesController < ApplicationController
  before_action :set_organisatie, only: [:show, :edit, :update, :destroy]

  layout "cms", except: :h_organisatie

  # GET /organisaties
  # GET /organisaties.json
  def index
    @organisaties = Organisatie.all.order(:naam)
  end

  def h_organisatie

    if (params[:organisatie] != nil and params[:organisatie][:id] != "")
      @organisatie_search = Organisatie.find(params[:organisatie][:id])
    else
      @organisatie_search = Organisatie.find(1)  
    end
    
    session[:org_id] = @organisatie_search.id
    
    @gbr_vla = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 1)
    @gbr_va = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 2)
    @gbr_kn = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 3) 
    @gbr_pr = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 4)
    @gbr_tk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 5)
    @gbr_kh = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 6)
    @gbr_rc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 7)
    
    @gbr_ndc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 11)
    @gbr_dc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 12)
    @gbr_vg = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 14)
    @gbr_hk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 15)
    @gbr_ab = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 16)
  
    # Grootboek  
    @gb_div = []
    @gb_input = []

    if @organisatie_search.rechtsvorm_id != 1
      # Diverse grootboek
      Grootboektype.distinct.where("categorie = ?", "D").joins(grootboekrekeningen: :organisatie).where("organisaties.id = ?", @organisatie_search).references(:organisatie).each { |t|
        @gb_div.push(calc_gbtype(@organisatie_search, t.id))
      }
      # Input grootboek
      Grootboektype.distinct.where("categorie = ?", "I").joins(grootboekrekeningen: :organisatie).where("organisaties.id = ?", @organisatie_search).references(:organisatie).each { |t|
        @gb_input.push(calc_gbtype(@organisatie_search, t.id))
      }
      # Output grootboek
      # Inkoopwaarde van de omzet
      @inkw_vd_omzet = 0
      @inkw_vd_omzet= calc_boekproces(@organisatie_search, 23)[1]
      logger.debug("INKOOPWAARDE VAN DE OMZET: #{@inkw_vd_omzet}")
      
      # Bedrijfskosten
      @bedrijfskosten = 0
      @bedrijfskosten= calc_boekproces(@organisatie_search, [24,25,26])[1]
      logger.debug("BEDRIJFSKOSTEN: #{@bedrijfskosten}")
              
      # Omzet
      @omzet = 0
      @omzet= calc_boekproces(@organisatie_search, 28)[1]
      logger.debug("OMZET: #{@omzet}")
      
      # Basis winst
      @basiswinst = 0
      @basiswinst = @omzet - @inkw_vd_omzet - @bedrijfskosten
      logger.debug("BASISWINST: #{@basiswinst}")
      
      # Overige kosten 
      @overigekosten = 0
      @overigekosten= calc_boekproces(@organisatie_search, 10)[1]
      logger.debug("OVERIGE KOSTEN: #{@overigekosten}")
      
      # Belastingen
      @belastingen = 0
      @belastingen= calc_boekproces(@organisatie_search, [6,7,8,9] )[2]
      logger.debug("BELASTINGEN: #{@belastingen}")
      
      #Eigen vermogen grootboek
      # Start EV
      @ev_start = 0
      # Netto winst voor belasting
      @nettowinstvb = @basiswinst - @overigekosten
      # Netto winst na belasting
      @nettowinstnb = @nettowinstvb - @belastingen.abs
      # Eind EV
      @ev_eind = 0
      @ev_eind = @ev_start - @bedrijfskosten - @overigekosten + @basiswinst
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
    
    def calc_gbtype(org, gb_type)
      min = 0
      plus = 0
      totaal = 0
      naam = ""
      gbr_type = org.grootboekrekeningen.where("grootboektype_id = ?", "#{gb_type}").joins(:grootboektype)
      gbr_type.each { |gt|
        gt.boekingen.each { |boeking|
            if boeking.bij_af == '-'
              min = min + boeking.waarde
            else
              plus = plus + boeking.waarde
            end
        }
        totaal = plus - min
      }
      naam = Grootboektype.find(gb_type).naam
      return naam, plus, min, totaal 
    end
    
    def calc_boekproces(org, boekproces)
      min = 0
      plus = 0
      totaal = 0
      org.boekingen.where("boekproces_id in (?)", boekproces).each { |boeking|
        if boeking.bij_af == '-'
          min = min + boeking.waarde
        else
          plus = plus + boeking.waarde
        end
      }
      totaal = plus - min
      return plus, min, totaal
    end
    
end
