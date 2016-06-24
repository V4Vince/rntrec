class UnitsController < ProtectedController
  before_action :set_unit, only: [:show, :update, :destroy]

  # GET /units
  # GET /units.json
  def index
    @units = current_user.units.all

    render json: @units
  end

  # GET /units/1
  # GET /units/1.json
  def show
    render json: Unit.find(params[:id])
  end

  # POST /units
  # POST /units.json
  def create
    @unit = Unit.new(unit_params)

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

    def unit_params
      params.require(:units).permit(:unit_num, :num_bedrooms, :num_bathrooms, :num_parking, :expense, :house_id)
    end
end
