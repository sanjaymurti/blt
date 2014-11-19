require 'test_helper'

class BillableHoursControllerTest < ActionController::TestCase
  setup do
    @billable_hour = billable_hours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billable_hours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billable_hour" do
    assert_difference('BillableHour.count') do
      post :create, billable_hour: { description: @billable_hour.description, end: @billable_hour.end, project_id: @billable_hour.project_id, start: @billable_hour.start }
    end

    assert_redirected_to billable_hour_path(assigns(:billable_hour))
  end

  test "should show billable_hour" do
    get :show, id: @billable_hour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billable_hour
    assert_response :success
  end

  test "should update billable_hour" do
    patch :update, id: @billable_hour, billable_hour: { description: @billable_hour.description, end: @billable_hour.end, project_id: @billable_hour.project_id, start: @billable_hour.start }
    assert_redirected_to billable_hour_path(assigns(:billable_hour))
  end

  test "should destroy billable_hour" do
    assert_difference('BillableHour.count', -1) do
      delete :destroy, id: @billable_hour
    end

    assert_redirected_to billable_hours_path
  end
end
