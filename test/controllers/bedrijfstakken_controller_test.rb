require 'test_helper'

class BedrijfstakkenControllerTest < ActionController::TestCase
  setup do
    @bedrijfstak = bedrijfstakken(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bedrijfstakken)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bedrijfstak" do
    assert_difference('Bedrijfstak.count') do
      post :create, bedrijfstak: { naam: @bedrijfstak.naam }
    end

    assert_redirected_to bedrijfstak_path(assigns(:bedrijfstak))
  end

  test "should show bedrijfstak" do
    get :show, id: @bedrijfstak
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bedrijfstak
    assert_response :success
  end

  test "should update bedrijfstak" do
    patch :update, id: @bedrijfstak, bedrijfstak: { naam: @bedrijfstak.naam }
    assert_redirected_to bedrijfstak_path(assigns(:bedrijfstak))
  end

  test "should destroy bedrijfstak" do
    assert_difference('Bedrijfstak.count', -1) do
      delete :destroy, id: @bedrijfstak
    end

    assert_redirected_to bedrijfstakken_path
  end
end
