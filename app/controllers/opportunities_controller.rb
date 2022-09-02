class OpportunitiesController < ApplicationController
  before_action :set_opportunity, only: %i[ show edit update destroy ]
  before_action :set_user, only: %i[ create ]

  # GET /opportunities or /opportunities.json
  def index
    @opportunities = Opportunity.all
  end

  # GET /opportunities/1 or /opportunities/1.json
  def show
  end

  # GET /opportunities/new
  def new
    @opportunity = Opportunity.new
  end

  # GET /opportunities/1/edit
  def edit
  end

  # POST /opportunities or /opportunities.json
  def create
    @opportunity = Opportunity.new(opportunity_params)
    respond_to do |format|
      if @opportunity.save
        @user.opportunities << @opportunity
        format.html { redirect_to opportunity_url(@opportunity), notice: "Opportunity was successfully created." }
        format.json { render :show, status: :created, location: @opportunity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opportunities/1 or /opportunities/1.json
  def update
    respond_to do |format|
      if @opportunity.update(opportunity_params)
        format.html { redirect_to opportunity_url(@opportunity), notice: "Opportunity was successfully updated." }
        format.json { render :show, status: :ok, location: @opportunity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @opportunity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opportunities/1 or /opportunities/1.json
  def destroy
    @opportunity.destroy

    respond_to do |format|
      format.html { redirect_to opportunities_url, notice: "Opportunity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
    end

    def set_user
      @user = User.find(current_user.id)
    end

    # Only allow a list of trusted parameters through.
    def opportunity_params
      params.require(:opportunity).permit(:name, :opportunity_type, :description, :due)
    end
end
