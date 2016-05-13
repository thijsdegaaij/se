class HomeController < ApplicationController
  
  def index
    @organisatie_search = Organisatie.find(2)
    session[:org_id] = @organisatie_search.id

    @gbr_vla = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 1)
    @gbr_va = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 2)
    @gbr_kn = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 3)
    @gbr_pr = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 4)
    @gbr_tk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 5)
    @gbr_kh = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 6)
    @gbr_rc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 7)
      
    @gbr_ndc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 12)
    @gbr_dc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 13)
    @gbr_vg = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 14)
    @gbr_hk = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 15)
    @gbr_ab = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 16)
    
    # Inkoopboek
    @jnl_ink_search = @organisatie_search.journaals.where("journaaltype_id = ?", 1).first
    # Verkoopboek
    @jnl_verk_search = @organisatie_search.journaals.where("journaaltype_id = ?", 2).first
    # Bankboek
    @jnl_bank_search = @organisatie_search.journaals.where("journaaltype_id = ?", 3).first
    # Leveringen
    @jnl_lev_search = @organisatie_search.journaals.where("journaaltype_id = ?", 4).first
  
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

    # Diverse grootboek
    @gb_div = []
    Grootboektype.where("categorie = ?", "D").joins(grootboekrekeningen: :organisatie).where("organisaties.id = ? and organisaties.rechtsvorm_id <> ?", @organisatie_search, 1).references(:organisatie).each { |t|
      @gb_div.push(calc(@organisatie_search, t.id))
    }
    # Input grootboek
    @gb_input = []
    Grootboektype.where("categorie = ?", "I").each { |t|
      @gb_input.push(calc(@organisatie_search, t.id))
    }
    # Output grootboek
    @gb_output = []
    Grootboektype.where("categorie = ?", "O").joins(grootboekrekeningen: :organisatie).where("organisaties.id = ? and organisaties.rechtsvorm_id <> ?", @organisatie_search, 1).references(:organisatie).each { |t|
      @gb_output.push(calc(@organisatie_search, t.id))
    }
    # Eigen vermogen grootboek
    @gb_ev = []
    Grootboektype.where("categorie = ?", "E").joins(grootboekrekeningen: :organisatie).where("organisaties.id = ? and organisaties.rechtsvorm_id <> ?", @organisatie_search, 1).references(:organisatie).each { |t|
      @gb_ev.push(calc(@organisatie_search, t.id))
    }
   
  end
  
  
  def cms
  end
  
  private
  
    def calc(org, gb_type)
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
  
end
