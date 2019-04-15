class HystoryZakazsController < ApplicationController
  before_action :set_hystory_zakaz, only: [:show, :edit, :update, :destroy]

  # GET /hystory_zakazs
  # GET /hystory_zakazs.json
  def index
    @hystory_zakazs = HystoryZakaz.order(:id)
  end

  # GET /hystory_zakazs/1
  # GET /hystory_zakazs/1.json
  def show
  end

  # GET /hystory_zakazs/new
  def new
    @hystory_zakaz = HystoryZakaz.new
  end

  # GET /hystory_zakazs/1/edit
  def edit
  end

  # POST /hystory_zakazs
  # POST /hystory_zakazs.json
  def create
    @hystory_zakaz = HystoryZakaz.new(hystory_zakaz_params)

    respond_to do |format|
      if @hystory_zakaz.save
        format.html { redirect_to @hystory_zakaz, notice: 'Hystory zakaz was successfully created.' }
        format.json { render :show, status: :created, location: @hystory_zakaz }
      else
        format.html { render :new }
        format.json { render json: @hystory_zakaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hystory_zakazs/1
  # PATCH/PUT /hystory_zakazs/1.json
  def update
    respond_to do |format|
      if @hystory_zakaz.update(hystory_zakaz_params)
        format.html { redirect_to @hystory_zakaz, notice: 'Hystory zakaz was successfully updated.' }
        format.json { render :show, status: :ok, location: @hystory_zakaz }
      else
        format.html { render :edit }
        format.json { render json: @hystory_zakaz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hystory_zakazs/1
  # DELETE /hystory_zakazs/1.json
  def destroy
    @hystory_zakaz.destroy
    respond_to do |format|
      format.html { redirect_to hystory_zakazs_url, notice: 'Hystory zakaz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hystory_zakaz
      @hystory_zakaz = HystoryZakaz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hystory_zakaz_params
      params.require(:hystory_zakaz).permit(:date_time, :email, :body_mail)
    end
end
