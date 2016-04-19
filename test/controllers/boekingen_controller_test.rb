require 'test_helper'

class BoekingenControllerTest < ActionController::TestCase
  setup do
    @boeking = boekingen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boekingen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boeking" do
    assert_difference('Boeking.count') do
      post :create, boeking: { bij_af: @boeking.bij_af, boek_type_id: @boeking.boek_type_id, datum: @boeking.datum, grootboekrekening_id: @boeking.grootboekrekening_id, hoeveelheid: @boeking.hoeveelheid, icoon: @boeking.icoon, overeenkomst_id: @boeking.overeenkomst_id, p_inkoop: @boeking.p_inkoop, product_id: @boeking.product_id, waarde: @boeking.waarde }
    end

    assert_redirected_to boeking_path(assigns(:boeking))
  end

  test "should show boeking" do
    get :show, id: @boeking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boeking
    assert_response :success
  end

  test "should update boeking" do
    patch :update, id: @boeking, boeking: { bij_af: @boeking.bij_af, boek_type_id: @boeking.boek_type_id, datum: @boeking.datum, grootboekrekening_id: @boeking.grootboekrekening_id, hoeveelheid: @boeking.hoeveelheid, icoon: @boeking.icoon, overeenkomst_id: @boeking.overeenkomst_id, p_inkoop: @boeking.p_inkoop, product_id: @boeking.product_id, waarde: @boeking.waarde }
    assert_redirected_to boeking_path(assigns(:boeking))
  end

  test "should destroy boeking" do
    assert_difference('Boeking.count', -1) do
      delete :destroy, id: @boeking
    end

    assert_redirected_to boekingen_path
  end
end
