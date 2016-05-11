class ScheduleFitnessesController < ApplicationController
  before_action :set_schedule_fitness, only: [:show, :edit, :update, :destroy]

  # GET /schedule_fitnesses
  # GET /schedule_fitnesses.json
  def index
    @schedule_fitnesses = ScheduleFitness.all
  end

  # GET /schedule_fitnesses/1
  # GET /schedule_fitnesses/1.json
  def show
  end

  # GET /schedule_fitnesses/new
  def new
    @schedule_fitness = ScheduleFitness.new
  end

  # GET /schedule_fitnesses/1/edit
  def edit
  end

  # POST /schedule_fitnesses
  # POST /schedule_fitnesses.json
  def create
    @schedule_fitness = ScheduleFitness.new(schedule_fitness_params)

    respond_to do |format|
      if @schedule_fitness.save
        format.html { redirect_to @schedule_fitness, notice: 'Schedule fitness was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_fitness }
      else
        format.html { render :new }
        format.json { render json: @schedule_fitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_fitnesses/1
  # PATCH/PUT /schedule_fitnesses/1.json
  def update
    respond_to do |format|
      if @schedule_fitness.update(schedule_fitness_params)
        format.html { redirect_to @schedule_fitness, notice: 'Schedule fitness was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_fitness }
      else
        format.html { render :edit }
        format.json { render json: @schedule_fitness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_fitnesses/1
  # DELETE /schedule_fitnesses/1.json
  def destroy
    @schedule_fitness.destroy
    respond_to do |format|
      format.html { redirect_to schedule_fitnesses_url, notice: 'Schedule fitness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_fitness
      @schedule_fitness = ScheduleFitness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_fitness_params
      params.require(:schedule_fitness).permit(:schedule_header_id, :schedule_candidate_id, :fitness)
    end
end
