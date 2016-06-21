class ContractsController < ApplicationController
  before_action :set_contract, only: [:show, :update, :destroy]

  # GET /contracts
  # GET /contracts.json
  def index
    @contracts = Contract.all

    render json: @contracts
  end

  # GET /contracts/1
  # GET /contracts/1.json
  def show
    render json: @contract
  end

  # POST /contracts
  # POST /contracts.json
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

    def contract_params
      params[:contract]
    end
end
