class ScheduleHeadersController < ApplicationController
  before_action :set_schedule_header, only: [:show, :edit, :update, :destroy]

  # GET /schedule_headers
  # GET /schedule_headers.json
  def index
    @schedule_headers = ScheduleHeader.all
  end

  # GET /schedule_headers/1
  # GET /schedule_headers/1.json
  def show
  end

  # GET /schedule_headers/new
  def new
    @schedule_header = ScheduleHeader.new
  end

  # GET /schedule_headers/1/edit
  def edit
  end

  # POST /schedule_headers
  # POST /schedule_headers.json
  def create
    @schedule_header = ScheduleHeader.new(schedule_header_params)

    respond_to do |format|
      if @schedule_header.save
        format.html { redirect_to @schedule_header, notice: 'Schedule header was successfully created.' }
        format.json { render :show, status: :created, location: @schedule_header }
      else
        format.html { render :new }
        format.json { render json: @schedule_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_headers/1
  # PATCH/PUT /schedule_headers/1.json
  def update
    respond_to do |format|
      if @schedule_header.update(schedule_header_params)
        format.html { redirect_to @schedule_header, notice: 'Schedule header was successfully updated.' }
        format.json { render :show, status: :ok, location: @schedule_header }
      else
        format.html { render :edit }
        format.json { render json: @schedule_header.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_headers/1
  # DELETE /schedule_headers/1.json
  def destroy
    @schedule_header.destroy
    respond_to do |format|
      format.html { redirect_to schedule_headers_url, notice: 'Schedule header was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_header
      @schedule_header = ScheduleHeader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_header_params
      params.require(:schedule_header).permit(:from, :to)
    end
end
