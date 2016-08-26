class ContractsController < ProtectedController
# class ContractsController < OpenReadController
  before_action :set_contract, only: [:show, :update, :destroy]

  # GET /units/1/contracts
  # GET /units/1/contracts.json
  def index
    @contracts = current_user.contracts
    # @contract = Contract.where("unit_id = ?", params[:unit_id])

    render json: @contracts
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    render json: Contract.find(params[:id])
  end

  # POST /units/1/contracts
  # POST /units/1/contracts.json
  #since unit has_one contract, .create/.build cannot be called on unit. Instead, call .create_contract
  def create
    @contract = Contract.new(contract_params)

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

    def set_unit
      @unit = Unit.find(params[:unit_id])
    end

    def contract_params
      params.require(:contract).permit(:start, :end, :num_tenants, :rent, :security, :unit_id)
    end
end
