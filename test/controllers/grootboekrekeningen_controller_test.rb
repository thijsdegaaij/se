require 'test_helper'

class GrootboekrekeningenControllerTest < ActionController::TestCase
  setup do
    @grootboekrekening = grootboekrekeningen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grootboekrekeningen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grootboekrekening" do
    assert_difference('Grootboekrekening.count') do
      post :create, grootboekrekening: { gbr_categorie_id: @grootboekrekening.gbr_categorie_id, icoon: @grootboekrekening.icoon, naam: @grootboekrekening.naam, organisatie_id: @grootboekrekening.organisatie_id }
    end

    assert_redirected_to grootboekrekening_path(assigns(:grootboekrekening))
  end

  test "should show grootboekrekening" do
    get :show, id: @grootboekrekening
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grootboekrekening
    assert_response :success
  end

  test "should update grootboekrekening" do
    patch :update, id: @grootboekrekening, grootboekrekening: { gbr_categorie_id: @grootboekrekening.gbr_categorie_id, icoon: @grootboekrekening.icoon, naam: @grootboekrekening.naam, organisatie_id: @grootboekrekening.organisatie_id }
    assert_redirected_to grootboekrekening_path(assigns(:grootboekrekening))
  end

  test "should destroy grootboekrekening" do
    assert_difference('Grootboekrekening.count', -1) do
      delete :destroy, id: @grootboekrekening
    end

    assert_redirected_to grootboekrekeningen_path
  end
end
