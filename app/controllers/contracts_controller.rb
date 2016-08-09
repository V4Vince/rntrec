# class ContractsController < ProtectedController
class ContractsController < OpenReadController
  before_action :set_contract, only: [:show, :update, :destroy]

  # GET /units/1contracts
  # GET /units/1/contracts.json
  def index
    @contracts = Contract.all
    # @contract = Contract.where("unit_id = ?", params[:unit_id])

    render json: @contracts
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    render json: Contract.find(params[:id])
  end

  # POST /contracts
  # POST /contracts.json
  def create
    @contract = current_user.units.contracts.create(contract_params)

    # Unit has_one contract therefore build_contract must be called on Unit
    # @contract = Unit.find(params[:unit_id]).build_contract(contract_params)

    if @contract.save
      render json: @contract, status: :created, location: @contract
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contracts/1
  # PATCH/PUT /contracts/1.json
  def update
    @contract = Contract.find(params[:id])

    if @contract.update(contract_params)
      head :no_content
    else
      render json: @contract.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contracts/1
  # DELETE /contracts/1.json
  def destroy
    @contract.destroy

    head :no_content
  end

  private

    def set_contract
      @contract = Contract.find(params[:id])
    end

    def contract_params
      params.require(:contracts).permit(:start, :end, :num_tenants, :rent, :security, :unit_id)
    end
end
