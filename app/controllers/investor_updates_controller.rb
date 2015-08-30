class InvestorUpdatesController < ApplicationController
  before_action :set_investor_update, only: [:show, :edit, :update, :destroy]

  # GET /investor_updates
  # GET /investor_updates.json
  def index
    @investor_updates = InvestorUpdate.all
  end

  # GET /investor_updates/1
  # GET /investor_updates/1.json
  def show
  end

  # GET /investor_updates/new
  def new
    @investor_update = InvestorUpdate.new
  end

  # GET /investor_updates/1/edit
  def edit
  end

  # POST /investor_updates
  # POST /investor_updates.json
  def create
    @investor_update = InvestorUpdate.new(investor_update_params)

    respond_to do |format|
      if @investor_update.save
        format.html { redirect_to @investor_update, notice: 'Investor update was successfully created.' }
        format.json { render :show, status: :created, location: @investor_update }
      else
        format.html { render :new }
        format.json { render json: @investor_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /investor_updates/1
  # PATCH/PUT /investor_updates/1.json
  def update
    respond_to do |format|
      if @investor_update.update(investor_update_params)
        format.html { redirect_to @investor_update, notice: 'Investor update was successfully updated.' }
        format.json { render :show, status: :ok, location: @investor_update }
      else
        format.html { render :edit }
        format.json { render json: @investor_update.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investor_updates/1
  # DELETE /investor_updates/1.json
  def destroy
    @investor_update.destroy
    respond_to do |format|
      format.html { redirect_to investor_updates_url, notice: 'Investor update was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_investor_update
      @investor_update = InvestorUpdate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def investor_update_params
      params.require(:investor_update).permit(:title, :summary, :image)
    end
end
