require 'test_helper'

class BoektypesControllerTest < ActionController::TestCase
  setup do
    @boektype = boektypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boektypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boektype" do
    assert_difference('Boektype.count') do
      post :create, boektype: { naam: @boektype.naam }
    end

    assert_redirected_to boektype_path(assigns(:boektype))
  end

  test "should show boektype" do
    get :show, id: @boektype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boektype
    assert_response :success
  end

  test "should update boektype" do
    patch :update, id: @boektype, boektype: { naam: @boektype.naam }
    assert_redirected_to boektype_path(assigns(:boektype))
  end

  test "should destroy boektype" do
    assert_difference('Boektype.count', -1) do
      delete :destroy, id: @boektype
    end

    assert_redirected_to boektypes_path
  end
end
