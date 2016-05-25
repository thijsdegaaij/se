class HomeController < ApplicationController
  
  def index
    @organisatie_search = Organisatie.find(1)
    session[:org_id] = @organisatie_search.id

    @gbr_vla = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 1)
    @gbr_va = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 2)
    @gbr_kn = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 3)
    @gbr_pr = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 4)
    @gbr_tk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 5)
    @gbr_kh = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 6)
    @gbr_rc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 7)
      
    @gbr_ndc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 14)
    @gbr_dc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 15)
    @gbr_vg = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 16)
    @gbr_hk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 17)
    @gbr_ab = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 18)
    
    # Inkoopboek
    @jnl_ink_search = @organisatie_search.journaals.where("journaaltype_id = ?", 1).first
    # Verkoopboek
    @jnl_verk_search = @organisatie_search.journaals.where("journaaltype_id = ?", 2).first
    # Bankboek
    @jnl_bank_search = @organisatie_search.journaals.where("journaaltype_id = ?", 3).first
    # Leveringen
    @jnl_lev_search = @organisatie_search.journaals.where("journaaltype_id = ?", 4).first
    # Intern
    @jnl_intern_search = @organisatie_search.journaals.where("journaaltype_id = ?", 5).first
      
    # Boekingen
    if @jnl_ink_search
      @bkg_ink_search = @jnl_ink_search.boekingen
      if @bkg_ink_search.count == 0
        @bkg_ink_search = nil
      end
      session[:jnl_ink_id] = @jnl_ink_search.id
    else
      session[:jnl_ink_id] = nil
    end
    
    if @jnl_verk_search
      @bkg_verk_search = @jnl_verk_search.boekingen
      if @bkg_verk_search.count == 0
        @bkg_verk_search = nil
      end
      session[:jnl_verk_id] = @jnl_verk_search.id
    else
      session[:jnl_verk_id] = nil
    end
    
    if @jnl_bank_search
      @bkg_bank_search = @jnl_bank_search.boekingen
      if @bkg_bank_search.count == 0
        @bkg_bank_search = nil
      end
      session[:jnl_bank_id] = @jnl_bank_search.id
    else
      session[:jnl_bank_id] = nil
    end
    
    if @jnl_lev_search
      @bkg_lev_search = @jnl_lev_search.boekingen
      if @bkg_lev_search.count == 0
        @bkg_lev_search = nil
      end
      session[:jnl_lev_id] = @jnl_lev_search.id
    else
      session[:jnl_lev_id] = nil
    end

    if @jnl_intern_search
      @bkg_intern_search = @jnl_intern_search.boekingen
      if @bkg_intern_search.count == 0
        @bkg_intern_search = nil
      end
      session[:jnl_intern_id] = @jnl_intern_search.id
    else
      session[:jnl_intern_id] = nil
    end


    # if @organisatie_search.boekingen.where("boekingtype = ?","I").count == 0
#       @bkg_intern_search = nil
#     else
#       @bkg_intern_search = @organisatie_search.boekingen.where("boekingtype = ?","I")
#     end

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

  def cms
  end
  
  private
    
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
