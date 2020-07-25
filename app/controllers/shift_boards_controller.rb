class ShiftBoardsController < ApplicationController
  before_action :set_shift_board, only: [:show, :edit, :update, :destroy]

  # GET /shift_boards
  # GET /shift_boards.json
  def index
    @shift_boards = ShiftBoard.all
  end

  # GET /shift_boards/1
  # GET /shift_boards/1.json
  def show
  end

  # GET /shift_boards/new
  def new
    @shift_board = ShiftBoard.new
  end

  # GET /shift_boards/1/edit
  def edit
  end

  # POST /shift_boards
  # POST /shift_boards.json
  def create
    @shift_board = ShiftBoard.new(shift_board_params)

    respond_to do |format|
      if @shift_board.save
        format.html { redirect_to @shift_board, notice: 'Shift board was successfully created.' }
        format.json { render :show, status: :created, location: @shift_board }
      else
        format.html { render :new }
        format.json { render json: @shift_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shift_boards/1
  # PATCH/PUT /shift_boards/1.json
  def update
    respond_to do |format|
      if @shift_board.update(shift_board_params)
        format.html { redirect_to @shift_board, notice: 'Shift board was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift_board }
      else
        format.html { render :edit }
        format.json { render json: @shift_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_boards/1
  # DELETE /shift_boards/1.json
  def destroy
    @shift_board.destroy
    respond_to do |format|
      format.html { redirect_to shift_boards_url, notice: 'Shift board was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_board
      @shift_board = ShiftBoard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shift_board_params
      params.require(:shift_board).permit(:store_id, :user_id, :date)
    end
end
