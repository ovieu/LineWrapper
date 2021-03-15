require "application_system_test_case"

class ResultsTest < ApplicationSystemTestCase
  setup do
    @result = results(:one)
  end

  test "visiting the index" do
    visit results_url
    assert_selector "h1", text: "Results"
  end

  test "creating a Result" do
    visit results_url
    click_on "New Result"

    fill_in "Delimeter", with: @result.delimeter
    fill_in "Input hash", with: @result.input_hash
    fill_in "Input string", with: @result.input_string
    fill_in "Max width", with: @result.max_width
    fill_in "New line", with: @result.new_line
    fill_in "Output string", with: @result.output_string
    click_on "Create Result"

    assert_text "Result was successfully created"
    click_on "Back"
  end

  test "updating a Result" do
    visit results_url
    click_on "Edit", match: :first

    fill_in "Delimeter", with: @result.delimeter
    fill_in "Input hash", with: @result.input_hash
    fill_in "Input string", with: @result.input_string
    fill_in "Max width", with: @result.max_width
    fill_in "New line", with: @result.new_line
    fill_in "Output string", with: @result.output_string
    click_on "Update Result"

    assert_text "Result was successfully updated"
    click_on "Back"
  end

  test "destroying a Result" do
    visit results_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Result was successfully destroyed"
  end
end
