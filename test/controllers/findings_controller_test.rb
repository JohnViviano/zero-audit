require "test_helper"

class FindingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @finding = findings(:one)
  end

  test "should get index" do
    get findings_url
    assert_response :success
  end

  test "should get new" do
    get new_finding_url
    assert_response :success
  end

  test "should create finding" do
    assert_difference("Finding.count") do
      post findings_url, params: { finding: { audit_id: @finding.audit_id, description: @finding.description, due_on: @finding.due_on, remediation: @finding.remediation, severity: @finding.severity, status: @finding.status, title: @finding.title } }
    end

    assert_redirected_to finding_url(Finding.last)
  end

  test "should show finding" do
    get finding_url(@finding)
    assert_response :success
  end

  test "should get edit" do
    get edit_finding_url(@finding)
    assert_response :success
  end

  test "should update finding" do
    patch finding_url(@finding), params: { finding: { audit_id: @finding.audit_id, description: @finding.description, due_on: @finding.due_on, remediation: @finding.remediation, severity: @finding.severity, status: @finding.status, title: @finding.title } }
    assert_redirected_to finding_url(@finding)
  end

  test "should destroy finding" do
    assert_difference("Finding.count", -1) do
      delete finding_url(@finding)
    end

    assert_redirected_to findings_url
  end
end
