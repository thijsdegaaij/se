require 'test_helper'

class RechtsvormenControllerTest < ActionController::TestCase
  setup do
    @rechtsvorm = rechtsvormen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rechtsvormen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rechtsvorm" do
    assert_difference('Rechtsvorm.count') do
      post :create, rechtsvorm: { naam: @rechtsvorm.naam }
    end

    assert_redirected_to rechtsvorm_path(assigns(:rechtsvorm))
  end

  test "should show rechtsvorm" do
    get :show, id: @rechtsvorm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rechtsvorm
    assert_response :success
  end

  test "should update rechtsvorm" do
    patch :update, id: @rechtsvorm, rechtsvorm: { naam: @rechtsvorm.naam }
    assert_redirected_to rechtsvorm_path(assigns(:rechtsvorm))
  end

  test "should destroy rechtsvorm" do
    assert_difference('Rechtsvorm.count', -1) do
      delete :destroy, id: @rechtsvorm
    end

    assert_redirected_to rechtsvormen_path
  end
end
