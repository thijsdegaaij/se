require 'test_helper'

class JournaaltypesControllerTest < ActionController::TestCase
  setup do
    @journaaltype = journaaltypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journaaltypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journaaltype" do
    assert_difference('Journaaltype.count') do
      post :create, journaaltype: { icoon: @journaaltype.icoon, naam: @journaaltype.naam }
    end

    assert_redirected_to journaaltype_path(assigns(:journaaltype))
  end

  test "should show journaaltype" do
    get :show, id: @journaaltype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journaaltype
    assert_response :success
  end

  test "should update journaaltype" do
    patch :update, id: @journaaltype, journaaltype: { icoon: @journaaltype.icoon, naam: @journaaltype.naam }
    assert_redirected_to journaaltype_path(assigns(:journaaltype))
  end

  test "should destroy journaaltype" do
    assert_difference('Journaaltype.count', -1) do
      delete :destroy, id: @journaaltype
    end

    assert_redirected_to journaaltypes_path
  end
end
