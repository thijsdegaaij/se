class HomeController < ApplicationController
  
  def index
    @organisatie_search = Organisatie.find(1)
    @gbr_va = @organisatie_search.grootboekrekeningen.where("grootboektype_id = ?", 1)
    
  end
  
end
