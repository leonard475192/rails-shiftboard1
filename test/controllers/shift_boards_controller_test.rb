require 'test_helper'

class ShiftBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift_board = shift_boards(:one)
  end

  test "should get index" do
    get shift_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_board_url
    assert_response :success
  end

  test "should create shift_board" do
    assert_difference('ShiftBoard.count') do
      post shift_boards_url, params: { shift_board: { date: @shift_board.date, store_id: @shift_board.store_id, user_id: @shift_board.user_id } }
    end

    assert_redirected_to shift_board_url(ShiftBoard.last)
  end

  test "should show shift_board" do
    get shift_board_url(@shift_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_board_url(@shift_board)
    assert_response :success
  end

  test "should update shift_board" do
    patch shift_board_url(@shift_board), params: { shift_board: { date: @shift_board.date, store_id: @shift_board.store_id, user_id: @shift_board.user_id } }
    assert_redirected_to shift_board_url(@shift_board)
  end

  test "should destroy shift_board" do
    assert_difference('ShiftBoard.count', -1) do
      delete shift_board_url(@shift_board)
    end

    assert_redirected_to shift_boards_url
  end
end
