require 'test_helper'

class BoekprocessenControllerTest < ActionController::TestCase
  setup do
    @boekproces = boekprocessen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boekprocessen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boekproces" do
    assert_difference('Boekproces.count') do
      post :create, boekproces: { icoon: @boekproces.icoon, naam: @boekproces.naam }
    end

    assert_redirected_to boekproces_path(assigns(:boekproces))
  end

  test "should show boekproces" do
    get :show, id: @boekproces
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boekproces
    assert_response :success
  end

  test "should update boekproces" do
    patch :update, id: @boekproces, boekproces: { icoon: @boekproces.icoon, naam: @boekproces.naam }
    assert_redirected_to boekproces_path(assigns(:boekproces))
  end

  test "should destroy boekproces" do
    assert_difference('Boekproces.count', -1) do
      delete :destroy, id: @boekproces
    end

    assert_redirected_to boekprocessen_path
  end
end
