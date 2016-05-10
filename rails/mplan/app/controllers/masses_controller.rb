class MassesController < ApplicationController
  before_action :set_mass, only: [:show, :edit, :update, :destroy]

  # GET /masses
  # GET /masses.json
  def index
    @masses = Mass.all
  end

  # GET /masses/1
  # GET /masses/1.json
  def show
  end

  # GET /masses/new
  def new
    @mass = Mass.new
  end

  # GET /masses/1/edit
  def edit
  end

  # POST /masses
  # POST /masses.json
  def create
    @mass = Mass.new(mass_params)

    respond_to do |format|
      if @mass.save
        format.html { redirect_to @mass, notice: 'Mass was successfully created.' }
        format.json { render :show, status: :created, location: @mass }
      else
        format.html { render :new }
        format.json { render json: @mass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /masses/1
  # PATCH/PUT /masses/1.json
  def update
    respond_to do |format|
      if @mass.update(mass_params)
        format.html { redirect_to @mass, notice: 'Mass was successfully updated.' }
        format.json { render :show, status: :ok, location: @mass }
      else
        format.html { render :edit }
        format.json { render json: @mass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /masses/1
  # DELETE /masses/1.json
  def destroy
    @mass.destroy
    respond_to do |format|
      format.html { redirect_to masses_url, notice: 'Mass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mass
      @mass = Mass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mass_params
      params.require(:mass).permit(:start, :end, :church_id)
    end
end
