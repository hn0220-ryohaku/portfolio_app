class MitsumorisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_mitsumori, only: [:show, :edit, :update, :destroy]

  # GET /mitsumoris
  def index
    @mitsumoris = current_user.Mitsumori.all
  end

  # GET /mitsumoris/new
  def new
    @mitsumori = current_user.Mitsumori.new
  end

  # GET /mitsumoris/1/edit
  def edit
  end

  # POST /mitsumoris
  def create
    @mitsumori = current_user.Mitsumori.new(mitsumori_params)

    if @mitsumori.save
      @ststus = true
    else
      @ststus = true
    end
  end

  # PATCH/PUT /mitsumoris/1
  def update
    if @mitsumori.update(mitsumori_params)
      @ststus = true
    else
      @ststus = true
    end
  end

  # DELETE /mitsumoris/1
  def destroy
    @mitsumori.destroy
    
  end

  private
 
    def set_mitsumori
      @mitsumori = current_user.Mitsumori.find(params[:id])
      redirect_to(goals_url, alert: "ERROR!!") if @goal.blank?
    end

  
    def mitsumori_params
      params.require(:mitsumori).permit(:car_maker, :v_type, :oil, :airfilter, :wiper, :price, :user_id)
    end
end
