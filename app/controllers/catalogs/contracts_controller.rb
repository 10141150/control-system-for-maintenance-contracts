class Catalogs::ContractsController < ApplicationController
  before_action :set_catalogs_contract, only: [:show, :edit, :update, :destroy]

  # GET /catalogs/contracts
  # GET /catalogs/contracts.json
  def index
    @catalogs_contracts = Catalogs::Contract.all
  end

  # GET /catalogs/contracts/1
  # GET /catalogs/contracts/1.json
  def show
  end

  # GET /catalogs/contracts/new
  def new
    @catalogs_contract = Catalogs::Contract.new
  end

  # GET /catalogs/contracts/1/edit
  def edit
  end

  # POST /catalogs/contracts
  # POST /catalogs/contracts.json
  def create
    @catalogs_contract = Catalogs::Contract.new(catalogs_contract_params)

    respond_to do |format|
      if @catalogs_contract.save
        format.html { redirect_to @catalogs_contract, notice: 'Contract was successfully created.' }
        format.json { render :show, status: :created, location: @catalogs_contract }
      else
        format.html { render :new }
        format.json { render json: @catalogs_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogs/contracts/1
  # PATCH/PUT /catalogs/contracts/1.json
  def update
    respond_to do |format|
      if @catalogs_contract.update(catalogs_contract_params)
        format.html { redirect_to @catalogs_contract, notice: 'Contract was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogs_contract }
      else
        format.html { render :edit }
        format.json { render json: @catalogs_contract.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogs/contracts/1
  # DELETE /catalogs/contracts/1.json
  def destroy
    @catalogs_contract.destroy
    respond_to do |format|
      format.html { redirect_to catalogs_contracts_url, notice: 'Contract was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogs_contract
      @catalogs_contract = Catalogs::Contract.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogs_contract_params
      params.require(:catalogs_contract).permit(:device_id, :supplier_id, :start_date, :end_date, :contract_no)
    end
end
