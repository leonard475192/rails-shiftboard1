require "application_system_test_case"

class ShiftBoardsTest < ApplicationSystemTestCase
  setup do
    @shift_board = shift_boards(:one)
  end

  test "visiting the index" do
    visit shift_boards_url
    assert_selector "h1", text: "Shift Boards"
  end

  test "creating a Shift board" do
    visit shift_boards_url
    click_on "New Shift Board"

    fill_in "Date", with: @shift_board.date
    fill_in "Store", with: @shift_board.store_id
    fill_in "User", with: @shift_board.user_id
    click_on "Create Shift board"

    assert_text "Shift board was successfully created"
    click_on "Back"
  end

  test "updating a Shift board" do
    visit shift_boards_url
    click_on "Edit", match: :first

    fill_in "Date", with: @shift_board.date
    fill_in "Store", with: @shift_board.store_id
    fill_in "User", with: @shift_board.user_id
    click_on "Update Shift board"

    assert_text "Shift board was successfully updated"
    click_on "Back"
  end

  test "destroying a Shift board" do
    visit shift_boards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shift board was successfully destroyed"
  end
end
