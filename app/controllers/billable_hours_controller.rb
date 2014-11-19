class BillableHoursController < ApplicationController
  before_action :set_billable_hour, only: [:show, :edit, :update, :destroy]

  # GET /billable_hours
  # GET /billable_hours.json
  def index
    @billable_hours = BillableHour.all
  end

  # GET /billable_hours/1
  # GET /billable_hours/1.json
  def show
  end

  # GET /billable_hours/new
  def new
    @billable_hour = BillableHour.new
  end

  # GET /billable_hours/1/edit
  def edit
  end

  # POST /billable_hours
  # POST /billable_hours.json
  def create
    @billable_hour = BillableHour.new(billable_hour_params)

    respond_to do |format|
      if @billable_hour.save
        format.html { redirect_to @billable_hour, notice: 'Billable hour was successfully created.' }
        format.json { render action: 'show', status: :created, location: @billable_hour }
      else
        format.html { render action: 'new' }
        format.json { render json: @billable_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /billable_hours/1
  # PATCH/PUT /billable_hours/1.json
  def update
    respond_to do |format|
      if @billable_hour.update(billable_hour_params)
        format.html { redirect_to @billable_hour, notice: 'Billable hour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @billable_hour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /billable_hours/1
  # DELETE /billable_hours/1.json
  def destroy
    @billable_hour.destroy
    respond_to do |format|
      format.html { redirect_to billable_hours_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_billable_hour
      @billable_hour = BillableHour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def billable_hour_params
      params.require(:billable_hour).permit(:description, :start, :end, :project_id)
    end
end
