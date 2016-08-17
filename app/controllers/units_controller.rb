class UnitsController < ProtectedController
# class UnitsController < ApplicationController
  before_action :set_unit, only: [:show, :update, :destroy]
  before_action :set_house, only: [:index, :create]

  # GET /houses/1/units
  # GET /houses/1/units.json
  def index
    #all units from current house
    @units = @house.units
    # @units = Unit.where("house_id = ?", params[:house_id])

    render json: @units
  end

  # GET /units/1
  # GET /units/1.json
  def show
    render json: Unit.find(params[:id])
  end

  # POST /houses/1/units
  # POST /houses/1/units.json
  def create
    @unit = @house.units.build(unit_params)
    # @unit = House.find(params[:house_id]).units.build(unit_params)
    if @unit.save
      render json: @unit, status: :created, location: @unit
    else
      render json: @unit.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /units/1
  # PATCH/PUT /units/1.json
  def update
    @unit = Unit.find(params[:id])

    if @unit.update(unit_params)
      head :no_content
    else
      render json: @unit.errors, status: :unprocessable_entity
    end
  end

  # DELETE /units/1
  # DELETE /units/1.json
  def destroy
    @unit.destroy

    head :no_content
  end

  private

    def set_unit
      @unit = Unit.find(params[:id])
    end

    def set_house
      @house = House.find(params[:house_id])
      # @house = current_user.houses.find(params[:id])
    end

    def unit_params
      params.require(:unit).permit(:unit_num, :num_bedrooms, :num_bathrooms, :num_parking)
    end
end
