class MassConstraintsController < ApplicationController
  before_action :set_mass_constraint, only: [:show, :edit, :update, :destroy]

  # GET /mass_constraints
  # GET /mass_constraints.json
  def index
    @mass_constraints = MassConstraint.all
  end

  # GET /mass_constraints/1
  # GET /mass_constraints/1.json
  def show
  end

  # GET /mass_constraints/new
  def new
    @mass_constraint = MassConstraint.new
  end

  # GET /mass_constraints/1/edit
  def edit
  end

  # POST /mass_constraints
  # POST /mass_constraints.json
  def create
    @mass_constraint = MassConstraint.new(mass_constraint_params)

    respond_to do |format|
      if @mass_constraint.save
        format.html { redirect_to @mass_constraint, notice: 'Mass constraint was successfully created.' }
        format.json { render :show, status: :created, location: @mass_constraint }
      else
        format.html { render :new }
        format.json { render json: @mass_constraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mass_constraints/1
  # PATCH/PUT /mass_constraints/1.json
  def update
    respond_to do |format|
      if @mass_constraint.update(mass_constraint_params)
        format.html { redirect_to @mass_constraint, notice: 'Mass constraint was successfully updated.' }
        format.json { render :show, status: :ok, location: @mass_constraint }
      else
        format.html { render :edit }
        format.json { render json: @mass_constraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mass_constraints/1
  # DELETE /mass_constraints/1.json
  def destroy
    @mass_constraint.destroy
    respond_to do |format|
      format.html { redirect_to mass_constraints_url, notice: 'Mass constraint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mass_constraint
      @mass_constraint = MassConstraint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mass_constraint_params
      params.require(:mass_constraint).permit(:mass_id, :constraint_id, :constraint_type)
    end
end
