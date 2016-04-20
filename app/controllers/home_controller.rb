class HomeController < ApplicationController
  
  def index
    @organisatie_search = Organisatie.find(1)

    if (params[:organisatie] != nil and params[:organisatie][:id] != "")
      @organisatie_search = Organisatie.find(params[:organisatie][:id])
    end
  end
  
end
