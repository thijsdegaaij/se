require 'test_helper'

class GrootboektypesControllerTest < ActionController::TestCase
  setup do
    @grootboektype = grootboektypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grootboektypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grootboektype" do
    assert_difference('Grootboektype.count') do
      post :create, grootboektype: { icoon: @grootboektype.icoon, naam: @grootboektype.naam }
    end

    assert_redirected_to grootboektype_path(assigns(:grootboektype))
  end

  test "should show grootboektype" do
    get :show, id: @grootboektype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grootboektype
    assert_response :success
  end

  test "should update grootboektype" do
    patch :update, id: @grootboektype, grootboektype: { icoon: @grootboektype.icoon, naam: @grootboektype.naam }
    assert_redirected_to grootboektype_path(assigns(:grootboektype))
  end

  test "should destroy grootboektype" do
    assert_difference('Grootboektype.count', -1) do
      delete :destroy, id: @grootboektype
    end

    assert_redirected_to grootboektypes_path
  end
end
