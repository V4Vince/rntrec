class HousesController < ProtectedController
# class HousesController < ApplicationController
  before_action :set_house, only: [:show, :update, :destroy]

  # GET /houses
  # GET /houses.json
  def index
    @houses = current_user.houses.all
    # @houses = House.all

    render json: @houses
  end

  # GET /houses/1
  # GET /houses/1.json
  def show
    render json: @house
  end

  # POST /houses
  # POST /houses.json
  def create
    @house = House.new(house_params)
    @house.user_id = current_user.id

    if @house.save
      render json: @houses, status: :created, location: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /houses/1
  # PATCH/PUT /houses/1.json
  def update
    @house = House.find(params[:id])

    if @house.update(house_params)
      head :no_content
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  # DELETE /houses/1
  # DELETE /houses/1.json
  def destroy
    @house.destroy

    head :no_content
  end

  private

    def set_house
      @house = House.find(params[:id])
    end

    def house_params
      params.require(:houses).permit(:street_name, :num_units, :purchase_price, :current_price, :user_id)
    end

end
