class ExpensesController < ProtectedController
  before_action :set_expense, only: [:show, :update, :destroy]
  before_action :get_parent, only: [:index, :create]

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = @parent.expenses.all

    render json: @expenses
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
    render json: @expense
  end

  # POST /units/1/expenses
  # POST /units/1/expenses.json
  def create
    @expense = @parent.expenses.build(expense_params)

    if @expense.save
      render json: @expense, status: :created, location: @expense
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    @expense = Expense.find(params[:id])

    if @expense.update(expense_params)
      head :no_content
    else
      render json: @expense.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy

    head :no_content
  end

  private

    def set_expense
      @expense = Expense.find(params[:id])
    end

    #determines if the parent model is House or Unit
    def get_parent
      if params[:house_id].present?
        @parent = House.find(params[:house_id])
      elsif params[:unit_id].present?
        @parent = Unit.find(params[:unit_id])
      end
    end

    def expense_params
      params.require(:expense).permit(:expense_for, :expense_description, :expense_amount, :expense_date)
    end
end
