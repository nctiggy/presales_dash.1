class VmaxesController < ApplicationController
  before_action :set_vmax, only: [:show, :edit, :update, :destroy]

  # GET /vmaxes
  # GET /vmaxes.json
  def index
    @vmaxes = Vmax.all
  end

  # GET /vmaxes/1
  # GET /vmaxes/1.json
  def show
  end

  # GET /vmaxes/new
  def new
    @vmax = Vmax.new
  end

  # GET /vmaxes/1/edit
  def edit
  end

  # POST /vmaxes
  # POST /vmaxes.json
  def create
    @vmax = Vmax.new(vmax_params)

    respond_to do |format|
      if @vmax.save
        format.html { redirect_to @vmax, notice: 'Vmax was successfully created.' }
        format.json { render :show, status: :created, location: @vmax }
      else
        format.html { render :new }
        format.json { render json: @vmax.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vmaxes/1
  # PATCH/PUT /vmaxes/1.json
  def update
    respond_to do |format|
      if @vmax.update(vmax_params)
        format.html { redirect_to @vmax, notice: 'Vmax was successfully updated.' }
        format.json { render :show, status: :ok, location: @vmax }
      else
        format.html { render :edit }
        format.json { render json: @vmax.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vmaxes/1
  # DELETE /vmaxes/1.json
  def destroy
    @vmax.destroy
    respond_to do |format|
      format.html { redirect_to vmaxes_url, notice: 'Vmax was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vmax
      @vmax = Vmax.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vmax_params
      params.require(:vmax).permit(:serial_number, :system_name, :enginuity_code, :target_code, :ship_date, :install_date, :esrs_enabled, :contract_number, :contract_expiration, :raw_tb, :engine_count, :openscale, :site_id, :model_id)
    end
end
