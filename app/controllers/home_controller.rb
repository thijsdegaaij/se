class HomeController < ApplicationController
  
  def index
    @organisatie_search = Organisatie.find(2)
    session[:org_id] = @organisatie_search.id

    # NB staat ook in organisaties_controller
    #Bakker Bart   
    @gbr_vla = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 1) #vlottende activa
    @gbr_va = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 2) #vasteactiva
    @gbr_kn = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 3) #kosten
    @gbr_pr = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 4) #personeel
    @gbr_tk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 5) #verkopen
    @gbr_kh = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 6) #knowhow
    @gbr_rc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 7) #reclame
      
    #Maxima
    @gbr_ndc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 12) #niet duurzame consumptiegoederen
    @gbr_dc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 13) #duurzame consumptiegoederen
    @gbr_vg = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 14) #voor gezinsleden (consument als producent)
    @gbr_hk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 15) #huishouden kennis
    @gbr_ab = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 16) #arbeid uit
    @gbr_adm = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 17) #administratie    

    # Journaals
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





# Staat ook in organisatie_controller
    @gb_div = []
    @gb_input = []
    @gbr = []
    


    if @organisatie_search.rechtsvorm_id != 1
      # Diverse grootboek
      Grootboektype.distinct.where("categorie = ?", "D").joins(grootboekrekeningen: :organisatie).where("organisaties.id = ?", @organisatie_search)
      .references(:organisatie).each { |t| @gb_div.push(calc_gbtype(@organisatie_search, t.id))
      }
      # Input grootboek
      Grootboektype.distinct.where("categorie = ?", "I").joins(grootboekrekeningen: :organisatie).where("organisaties.id = ?", @organisatie_search)
      .references(:organisatie).each { |t| @gb_input.push(calc_gbtype(@organisatie_search, t.id))
      }


      # Thijs;  boekingen op grootboekrekening bank
  #    Grootboekrekening.where("naam = ?", "Bank")
  #    .references(:organisatie).each { |t| @gbr.push(calc_gbr(@organisatie_search, t.id))
  #    }
            
      # Output grootboek

      # Inkoopwaarde van de omzet
      @inkw_vd_omzet = 0
      @inkw_vd_omzet = calc_boekproces(@organisatie_search, 24)[1]
      logger.debug("INKOOPWAARDE VAN DE OMZET: #{@inkw_vd_omzet}")
      
      # Bedrijfskosten
      @inkoopkosten= calc_boekproces(@organisatie_search, [25])[1]
      @verkoopkosten= calc_boekproces(@organisatie_search, [26])[1]
      @algemenekosten= calc_boekproces(@organisatie_search, [27])[1]

      @bedrijfskosten = 0
      @bedrijfskosten= calc_boekproces(@organisatie_search, [25,26,27])[1]
      logger.debug("BEDRIJFSKOSTEN: #{@bedrijfskosten}")
              
      # Omzet
      @omzet = 0
      @omzet= calc_boekproces(@organisatie_search, 29)[1]
      logger.debug("OMZET: #{@omzet}")
      
     
     
      # inkomsten / door thijs
      @inkomsten = 0
      @inkomsten= calc_boekproces(@organisatie_search, 1)[0]
      logger.debug("OMZET: #{@omzet}")


      # uitgaven / door thijs
      @betalingen = 0
      @betalingen= calc_boekproces(@organisatie_search, 2)[1]
      logger.debug("OMZET: #{@omzet}")


      # levering vlottende activa / door thijs
      @leveringen_vla = 0
      @leveringen_vla= calc_gbtype(@organisatie_search, 1)[1]
      logger.debug("OMZET: #{@omzet}")

      # levering vaste activa / door thijs
      @leveringen_va = 0
      @leveringen_va= calc_gbtype(@organisatie_search, 2)[1]
      logger.debug("OMZET: #{@omzet}")

      # levering kosten / door thijs
      @leveringen_kst = 0
      @leveringen_kst = calc_gbtype(@organisatie_search, 3)[1]
      logger.debug("OMZET: #{@omzet}")

      # kostensoort: afschrijvingen / door thijs
      @afschrijving = 0
      @afschrijving = calc_boekproces(@organisatie_search, 20)[1]
      logger.debug("OMZET: #{@omzet}")

      # kostensoort: overige bedrijfskosten / door thijs
      @ks_overige_bedrijfskosten = 0
      @ks_overige_bedrijfskosten = calc_boekproces(@organisatie_search, 23)[1]
      logger.debug("OMZET: #{@omzet}")


      # Basis winst
      @basiswinst = 0
      @basiswinst = @omzet - @inkw_vd_omzet - @bedrijfskosten
      logger.debug("BASISWINST: #{@basiswinst}")
      
      # Overige kosten 
      @overigekosten = 0
      @overigekosten= calc_boekproces(@organisatie_search, 11)[1]
      logger.debug("OVERIGE KOSTEN: #{@overigekosten}")
      
      # Belastingen
      @belastingen = 0
      @belastingen= calc_boekproces(@organisatie_search, [9,10] )[2]
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
  
  # Public gemaakt, van private /Thijs
  public
    
#Thijs; boekingen van een specifieke grootboekrekening
    def calc_gbr(org, gbr)
      min = 0
      plus = 0
      totaal = 0
      naam = ""
      gbr = org.grootboekrekeningen.where("grootboekrekening_id = ?", "#{gbr}")
      gbr.each { |gbr|
        gbr.boekingen.each { |boeking|
            if boeking.bij_af == '-'
              min = min + boeking.waarde
            else
              plus = plus + boeking.waarde
            end
        }
        totaal = plus - min
      }
      naam = Grootboekrekening.find(gbr).naam
      return naam, plus, min, totaal
    end

#Thijs-einde

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
