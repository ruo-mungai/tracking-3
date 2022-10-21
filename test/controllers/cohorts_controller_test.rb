require "test_helper"

class CohortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohort = cohorts(:one)
  end

  test "should get index" do
    get cohorts_url, as: :json
    assert_response :success
  end

  test "should create cohort" do
    assert_difference("Cohort.count") do
      post cohorts_url, params: { cohort: { name: @cohort.name } }, as: :json
    end

    assert_response :created
  end

  test "should show cohort" do
    get cohort_url(@cohort), as: :json
    assert_response :success
  end

  test "should update cohort" do
    patch cohort_url(@cohort), params: { cohort: { name: @cohort.name } }, as: :json
    assert_response :success
  end

  test "should destroy cohort" do
    assert_difference("Cohort.count", -1) do
      delete cohort_url(@cohort), as: :json
    end

    assert_response :no_content
  end
end
