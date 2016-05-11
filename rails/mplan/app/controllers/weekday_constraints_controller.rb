class WeekdayConstraintsController < ApplicationController
  before_action :set_weekday_constraint, only: [:show, :edit, :update, :destroy]

  # GET /weekday_constraints
  # GET /weekday_constraints.json
  def index
    @weekday_constraints = WeekdayConstraint.all
  end

  # GET /weekday_constraints/1
  # GET /weekday_constraints/1.json
  def show
  end

  # GET /weekday_constraints/new
  def new
    @weekday_constraint = WeekdayConstraint.new
  end

  # GET /weekday_constraints/1/edit
  def edit
  end

  # POST /weekday_constraints
  # POST /weekday_constraints.json
  def create
    @weekday_constraint = WeekdayConstraint.new(weekday_constraint_params)

    respond_to do |format|
      if @weekday_constraint.save
        format.html { redirect_to @weekday_constraint, notice: 'Weekday constraint was successfully created.' }
        format.json { render :show, status: :created, location: @weekday_constraint }
      else
        format.html { render :new }
        format.json { render json: @weekday_constraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekday_constraints/1
  # PATCH/PUT /weekday_constraints/1.json
  def update
    respond_to do |format|
      if @weekday_constraint.update(weekday_constraint_params)
        format.html { redirect_to @weekday_constraint, notice: 'Weekday constraint was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekday_constraint }
      else
        format.html { render :edit }
        format.json { render json: @weekday_constraint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekday_constraints/1
  # DELETE /weekday_constraints/1.json
  def destroy
    @weekday_constraint.destroy
    respond_to do |format|
      format.html { redirect_to weekday_constraints_url, notice: 'Weekday constraint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekday_constraint
      @weekday_constraint = WeekdayConstraint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekday_constraint_params
      params.require(:weekday_constraint).permit(:day, :name, :constraint_id, :constraint_type)
    end
end
