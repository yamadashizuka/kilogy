class InspectionsController < ApplicationController
  before_action :set_inspection, only: [:show, :edit, :update, :destroy, :do_inspection]

  # GET /inspections
  # GET /inspections.json
  def index
    #@inspections = Inspection.all
    @search = Inspection.search(params[:q])
    @inspections = @search.result.order(:targetyearmonth)

  end

  # GET /inspections/1
  # GET /inspections/1.json
  def show
    @kirokus = @inspection.kiroku.all
  end
  
  # GET /inspections/1/do_inspection
  def do_inspection
    @kirokus = @inspection.kiroku.all
    @kiroku = @inspection.kiroku.build
    @check =  @kiroku.build_check
    @measurement = @kiroku.build_measurement
    @note = @kiroku.build_note
  end

  # GET /inspections/new
  def new
    @inspection = Inspection.new
  end

  # GET /inspections/1/edit
  def edit
  end

  # POST /inspections
  # POST /inspections.json
  def create
    @inspection = Inspection.new(inspection_params)

    respond_to do |format|
      if @inspection.save
        format.html { redirect_to @inspection, notice: 'Inspection was successfully created.' }
        format.json { render :show, status: :created, location: @inspection }
      else
        format.html { render :new }
        format.json { render json: @inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inspections/1
  # PATCH/PUT /inspections/1.json
  def update
    respond_to do |format|
      if @inspection.update(inspection_params)
        format.html { redirect_to @inspection, notice: 'Inspection was successfully updated.' }
        format.json { render :show, status: :ok, location: @inspection }
      else
        format.html { render :edit }
        format.json { render json: @inspection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inspections/1
  # DELETE /inspections/1.json
  def destroy
    @inspection.destroy
    respond_to do |format|
      format.html { redirect_to inspections_url, notice: 'Inspection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def createInspections
  worker_id = params[:data][:worker]
  when_year  = params[:when][:year]
  when_month = params[:when][:month]

  params[:check].each do |key, val|
    if(val=="1" and Worker.exists?(id: worker_id))
      newinspection =  Inspection.new
      newinspection.targetyearmonth = when_year+when_month
      newinspection.equipment_id = key
      newinspection.status_id = 1
      newinspection.worker_id = worker_id
      newinspection.result_id = 4
      newinspection.processingdate =  Date.new(when_year.to_i, when_month.to_i, 1)
      newinspection.save
    end
  end

  redirect_to noinspection_list_url
end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inspection
      @inspection = Inspection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inspection_params
      params.require(:inspection).permit(:targetyearmonth, :equipment_id, :status_id, :worker_id, :result_id, :processingdate)
    end
end
