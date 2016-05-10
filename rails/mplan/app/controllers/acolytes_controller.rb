class AcolytesController < ApplicationController
  before_action :set_acolyte, only: [:show, :edit, :update, :destroy]

  # GET /acolytes
  # GET /acolytes.json
  def index
    @acolytes = Acolyte.all
  end

  # GET /acolytes/1
  # GET /acolytes/1.json
  def show
  end

  # GET /acolytes/new
  def new
    @acolyte = Acolyte.new
  end

  # GET /acolytes/1/edit
  def edit
  end

  # POST /acolytes
  # POST /acolytes.json
  def create
    @acolyte = Acolyte.new(acolyte_params)

    respond_to do |format|
      if @acolyte.save
        format.html { redirect_to @acolyte, notice: 'Acolyte was successfully created.' }
        format.json { render :show, status: :created, location: @acolyte }
      else
        format.html { render :new }
        format.json { render json: @acolyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acolytes/1
  # PATCH/PUT /acolytes/1.json
  def update
    respond_to do |format|
      if @acolyte.update(acolyte_params)
        format.html { redirect_to @acolyte, notice: 'Acolyte was successfully updated.' }
        format.json { render :show, status: :ok, location: @acolyte }
      else
        format.html { render :edit }
        format.json { render json: @acolyte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acolytes/1
  # DELETE /acolytes/1.json
  def destroy
    @acolyte.destroy
    respond_to do |format|
      format.html { redirect_to acolytes_url, notice: 'Acolyte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acolyte
      @acolyte = Acolyte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acolyte_params
      params.require(:acolyte).permit(:firstname, :lastname, :church_id)
    end
end
