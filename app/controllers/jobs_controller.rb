class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]


  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all
  #allow listing of the Materials database in the Jobs index
    @materials = Material.all
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
  #showing the materials associated with each job
    @materials = Material.where(material_job: @job.job_id)
  end

  # GET /jobs/new
  def new
    @job = Job.new
  end

  # GET /jobs/1/edit
  def edit
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully created.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job was successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy
    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_materials
    puts "test"
    Inventory.update_quantity(params[:part], params[:quantity_update])
    redirect_to root_url, notice: "added and updated"
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    #def set_material
    #  @material = Material.find(params[:id])
  #  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_params
      params.require(:job).permit(:job_id, :location, :description, :due_by, :created, :priority, :status)
    end

  #  def material_params
  #    params.require(:material).permit(:job, :part_number, :part_description, :quantity_used, :closet)
  #  end
end
