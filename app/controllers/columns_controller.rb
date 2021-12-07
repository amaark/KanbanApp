class ColumnsController < ApplicationController
  before_action :set_board, only: [:new, :create]
  before_action :set_column, only: %i[ show edit update destroy ]

  # GET /columns or /columns.json
  def index
    @columns = Column.all
  end

  # GET /columns/1 or /columns/1.json
  def show
  end

  # GET /columns/new
  def new
    @column = @board.columns.new
  end

  # GET /columns/1/edit
  def edit
  end

  # POST /columns or /columns.json
  def create
    @column = @board.columns.new(column_params)

    respond_to do |format|
      if @column.save
        format.html { redirect_to @column, notice: I18n.t("columns.create.success") }
        format.json { render :show, status: :created, location: @column }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /columns/1 or /columns/1.json
  def update
    respond_to do |format|
      if @column.update(column_params)
        format.html { redirect_to @column, notice: I18n.t("columns.update.success") }
        format.json { render :show, status: :ok, location: @column }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /columns/1 or /columns/1.json
  def destroy
    @column.destroy
    respond_to do |format|
      format.html { redirect_to columns_url, notice: I18n.t("columns.destroy.success") }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_column
      @column = Column.find(params[:id])
    end

    # Store reference to the associated board for valid creation according to the model.
    def set_board
      @board = Board.find_by(id: params[:board_id]) ||
               Board.find(column_params[:board_id])
    end

    # Only allow a list of trusted parameters through.
    def column_params
      params.require(:column).permit(:board_id, :column_title, :limit)
    end
end
