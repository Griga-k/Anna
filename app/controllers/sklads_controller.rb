class SkladsController < ApplicationController
  before_action :set_sklad, only: [:show, :edit, :update, :destroy]

  # GET /sklads
  # GET /sklads.json
  def index
    @sklads = Sklad.all
  end

  # GET /sklads/1
  # GET /sklads/1.json
  def show
  end

  # GET /sklads/new
  def new
    @sklad = Sklad.new
  end

  # GET /sklads/1/edit
  def edit
  end

  # POST /sklads
  # POST /sklads.json
  def create
    @sklad = Sklad.new(sklad_params)

    respond_to do |format|
      if @sklad.save
        format.html { redirect_to @sklad, notice: 'Sklad was successfully created.' }
        format.json { render :show, status: :created, location: @sklad }
      else
        format.html { render :new }
        format.json { render json: @sklad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sklads/1
  # PATCH/PUT /sklads/1.json
  def update
    respond_to do |format|
      if @sklad.update(sklad_params)
        format.html { redirect_to @sklad, notice: 'Sklad was successfully updated.' }
        format.json { render :show, status: :ok, location: @sklad }
      else
        format.html { render :edit }
        format.json { render json: @sklad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sklads/1
  # DELETE /sklads/1.json
  def destroy
    @sklad.destroy
    respond_to do |format|
      format.html { redirect_to sklads_url, notice: 'Sklad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sklad
      @sklad = Sklad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sklad_params
      params.require(:sklad).permit(:oldid, :category, :name, :counttt, :nottte, :image, :price, :min_count, :count_zakaz, :save_place, :artikul, :name_pdf, :draw_pdf, :name_dxf, :draw_dxf, :value_types)
    end
end
