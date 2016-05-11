class IntervalConstraintsController < ApplicationController
  before_action :set_interval_constraint, only: [:show, :edit, :update, :destroy]

  # GET /interval_constraints
  # GET /interval_constraints.json
  def index
    @interval_constraints = IntervalConstraint.all
  end

  # GET /interval_constraints/1
  # GET /interval_constraints/1.json
  def show
  end

  # GET /interval_constraints/new
  def new
    @interval_constraint = IntervalConstraint.new
  end

  # GET /interval_constraints/1/edit
  def edit
  end

  # POST /interval_constraints
  # POST /interval_constraints.json
  def create
    @interval_constraint = IntervalConstraint.new(interval_constraint_params)

    respond_to do |format|
      if @interval_constraint.save
        format.html { redirect_to @interval_constraint, notice: 'Interval constraint was successfully created.' }
        format.json { render :show, status: :created, location: @interval_constraint }
      else
        format.html { render :new }
        format.json { render json: @interval_constraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interval_constraints/1
  # PATCH/PUT /interval_constraints/1.json
  def update
    respond_to do |format|
      if @interval_constraint.update(interval_constraint_params)
        format.html { redirect_to @interval_constraint, notice: 'Interval constraint was successfully updated.' }
        format.json { render :show, status: :ok, location: @interval_constraint }
      else
        format.html { render :edit }
        format.json { render json: @interval_constraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interval_constraints/1
  # DELETE /interval_constraints/1.json
  def destroy
    @interval_constraint.destroy
    respond_to do |format|
      format.html { redirect_to interval_constraints_url, notice: 'Interval constraint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interval_constraint
      @interval_constraint = IntervalConstraint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interval_constraint_params
      params.require(:interval_constraint).permit(:from, :to, :constraint_id, :constraint_type)
    end
end
