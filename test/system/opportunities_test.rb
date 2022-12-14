require "application_system_test_case"

class OpportunitiesTest < ApplicationSystemTestCase
  setup do
    @opportunity = opportunities(:one)
  end

  test "visiting the index" do
    visit opportunities_url
    assert_selector "h1", text: "Opportunities"
  end

  test "should create opportunity" do
    visit opportunities_url
    click_on "New opportunity"

    fill_in "Description", with: @opportunity.description
    fill_in "Due", with: @opportunity.due
    fill_in "Name", with: @opportunity.name
    fill_in "Type", with: @opportunity.type
    click_on "Create Opportunity"

    assert_text "Opportunity was successfully created"
    click_on "Back"
  end

  test "should update Opportunity" do
    visit opportunity_url(@opportunity)
    click_on "Edit this opportunity", match: :first

    fill_in "Description", with: @opportunity.description
    fill_in "Due", with: @opportunity.due
    fill_in "Name", with: @opportunity.name
    fill_in "Type", with: @opportunity.type
    click_on "Update Opportunity"

    assert_text "Opportunity was successfully updated"
    click_on "Back"
  end

  test "should destroy Opportunity" do
    visit opportunity_url(@opportunity)
    click_on "Destroy this opportunity", match: :first

    assert_text "Opportunity was successfully destroyed"
  end
end
