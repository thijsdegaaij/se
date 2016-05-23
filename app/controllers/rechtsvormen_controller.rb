class RechtsvormenController < ApplicationController
  before_action :set_rechtsvorm, only: [:show, :edit, :update, :destroy]

  layout "cms"
  
  # GET /rechtsvormen
  # GET /rechtsvormen.json
  def index
    @rechtsvormen = Rechtsvorm.all.order(:naam)
  end

  # GET /rechtsvormen/1
  # GET /rechtsvormen/1.json
  def show
  end

  # GET /rechtsvormen/new
  def new
    @rechtsvorm = Rechtsvorm.new
  end

  # GET /rechtsvormen/1/edit
  def edit
  end

  # POST /rechtsvormen
  # POST /rechtsvormen.json
  def create
    @rechtsvorm = Rechtsvorm.new(rechtsvorm_params)

    respond_to do |format|
      if @rechtsvorm.save
        format.html { redirect_to @rechtsvorm, notice: 'Rechtsvorm was successfully created.' }
        format.json { render :show, status: :created, location: @rechtsvorm }
      else
        format.html { render :new }
        format.json { render json: @rechtsvorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rechtsvormen/1
  # PATCH/PUT /rechtsvormen/1.json
  def update
    respond_to do |format|
      if @rechtsvorm.update(rechtsvorm_params)
        format.html { redirect_to @rechtsvorm, notice: 'Rechtsvorm was successfully updated.' }
        format.json { render :show, status: :ok, location: @rechtsvorm }
      else
        format.html { render :edit }
        format.json { render json: @rechtsvorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rechtsvormen/1
  # DELETE /rechtsvormen/1.json
  def destroy
    @rechtsvorm.destroy
    respond_to do |format|
      format.html { redirect_to rechtsvormen_url, notice: 'Rechtsvorm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rechtsvorm
      @rechtsvorm = Rechtsvorm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rechtsvorm_params
      params.require(:rechtsvorm).permit(:naam, :afkorting)
    end
end
