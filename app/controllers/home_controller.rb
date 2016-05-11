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
      
    @gbr_ndc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 11)
    @gbr_dc = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 12)
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

  end
  
  def cms
  end
  
end
