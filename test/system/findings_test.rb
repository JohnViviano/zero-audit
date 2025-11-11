require "application_system_test_case"

class FindingsTest < ApplicationSystemTestCase
  setup do
    @finding = findings(:one)
  end

  test "visiting the index" do
    visit findings_url
    assert_selector "h1", text: "Findings"
  end

  test "should create finding" do
    visit findings_url
    click_on "New finding"

    fill_in "Audit", with: @finding.audit_id
    fill_in "Description", with: @finding.description
    fill_in "Due on", with: @finding.due_on
    fill_in "Remediation", with: @finding.remediation
    fill_in "Severity", with: @finding.severity
    fill_in "Status", with: @finding.status
    fill_in "Title", with: @finding.title
    click_on "Create Finding"

    assert_text "Finding was successfully created"
    click_on "Back"
  end

  test "should update Finding" do
    visit finding_url(@finding)
    click_on "Edit this finding", match: :first

    fill_in "Audit", with: @finding.audit_id
    fill_in "Description", with: @finding.description
    fill_in "Due on", with: @finding.due_on
    fill_in "Remediation", with: @finding.remediation
    fill_in "Severity", with: @finding.severity
    fill_in "Status", with: @finding.status
    fill_in "Title", with: @finding.title
    click_on "Update Finding"

    assert_text "Finding was successfully updated"
    click_on "Back"
  end

  test "should destroy Finding" do
    visit finding_url(@finding)
    click_on "Destroy this finding", match: :first

    assert_text "Finding was successfully destroyed"
  end
end
