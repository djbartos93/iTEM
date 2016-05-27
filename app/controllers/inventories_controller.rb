class InventoriesController < ApplicationController
  before_action :set_inventory, only: [:show, :edit, :update, :destroy]
  # GET /inventories
  # GET /inventories.json
  def index
    @inventories = Inventory.all
  end

  #below is how we import the CSV, see the file in ../lib/Import.rb for more info on how this is working
  def import
    #Inventory.import_enable
    import = Import.new(file:(params[:file]))
    import.run!
    import.report.message
    redirect_to root_url, notice: "imported and enabled import for all values not set by user."
  end
  # GET /inventories/1
  # GET /inventories/1.json
  def show
  end

  # GET /inventories/new
  def new
    @inventory = Inventory.new
  end

  # GET /inventories/1/edit
  def edit
  end

  # POST /inventories
  # POST /inventories.json
  def create
    @inventory = Inventory.new(inventory_params)

    respond_to do |format|
      if @inventory.save
        format.html { redirect_to @inventory, notice: 'Inventory was successfully created.' }
        format.json { render :show, status: :created, location: @inventory }
      else
        format.html { render :new }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventories/1
  # PATCH/PUT /inventories/1.json
  def update
    respond_to do |format|
      if @inventory.update(inventory_params)
        format.html { redirect_to @inventory, notice: 'Inventory was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventory }
      else
        format.html { render :edit }
        format.json { render json: @inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventories/1
  # DELETE /inventories/1.json
  def destroy
    @inventory.destroy
    respond_to do |format|
      format.html { redirect_to inventories_url, notice: 'Inventory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end





  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory
      @inventory = Inventory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventory_params
      params.require(:inventory).permit(:tc_part, :short_desc, :description, :manufacture, :tc_type, :product_part, :tc_cat, :tc_wh, :tc_isle, :tc_shelf, :quantity_hand, :min_quantity, :quantity_used, :last_order, :product_barcode, :tc_barcode, :import_status)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_in) << :username
    end
end
