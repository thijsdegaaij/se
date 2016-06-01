require 'test_helper'

class MensenControllerTest < ActionController::TestCase
  setup do
    @mens = mensen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mensen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mens" do
    assert_difference('Mens.count') do
      post :create, mens: { geluksniveau: @mens.geluksniveau, geslacht: @mens.geslacht, gezondheidsniveau: @mens.gezondheidsniveau, kennisniveau: @mens.kennisniveau, leeftijd: @mens.leeftijd, naam: @mens.naam }
    end

    assert_redirected_to mens_path(assigns(:mens))
  end

  test "should show mens" do
    get :show, id: @mens
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mens
    assert_response :success
  end

  test "should update mens" do
    patch :update, id: @mens, mens: { geluksniveau: @mens.geluksniveau, geslacht: @mens.geslacht, gezondheidsniveau: @mens.gezondheidsniveau, kennisniveau: @mens.kennisniveau, leeftijd: @mens.leeftijd, naam: @mens.naam }
    assert_redirected_to mens_path(assigns(:mens))
  end

  test "should destroy mens" do
    assert_difference('Mens.count', -1) do
      delete :destroy, id: @mens
    end

    assert_redirected_to mensen_path
  end
end
