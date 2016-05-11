class LineupItemsController < ApplicationController
  before_action :set_lineup_item, only: [:show, :edit, :update, :destroy]

  # GET /lineup_items
  # GET /lineup_items.json
  def index
    @lineup_items = LineupItem.all
  end

  # GET /lineup_items/1
  # GET /lineup_items/1.json
  def show
  end

  # GET /lineup_items/new
  def new
    @lineup_item = LineupItem.new
  end

  # GET /lineup_items/1/edit
  def edit
  end

  # POST /lineup_items
  # POST /lineup_items.json
  def create
    @lineup_item = LineupItem.new(lineup_item_params)

    respond_to do |format|
      if @lineup_item.save
        format.html { redirect_to @lineup_item, notice: 'Lineup item was successfully created.' }
        format.json { render :show, status: :created, location: @lineup_item }
      else
        format.html { render :new }
        format.json { render json: @lineup_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lineup_items/1
  # PATCH/PUT /lineup_items/1.json
  def update
    respond_to do |format|
      if @lineup_item.update(lineup_item_params)
        format.html { redirect_to @lineup_item, notice: 'Lineup item was successfully updated.' }
        format.json { render :show, status: :ok, location: @lineup_item }
      else
        format.html { render :edit }
        format.json { render json: @lineup_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lineup_items/1
  # DELETE /lineup_items/1.json
  def destroy
    @lineup_item.destroy
    respond_to do |format|
      format.html { redirect_to lineup_items_url, notice: 'Lineup item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lineup_item
      @lineup_item = LineupItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lineup_item_params
      params.require(:lineup_item).permit(:acolyte_id, :position_id)
    end
end
