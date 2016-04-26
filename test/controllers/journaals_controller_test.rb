require 'test_helper'

class JournaalsControllerTest < ActionController::TestCase
  setup do
    @journaal = journaals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:journaals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create journaal" do
    assert_difference('Journaal.count') do
      post :create, journaal: { bedrag_ex_btw: @journaal.bedrag_ex_btw, bedrag_inc_btw: @journaal.bedrag_inc_btw, betalingswijze: @journaal.betalingswijze, boeknummer: @journaal.boeknummer, btw_percentage: @journaal.btw_percentage, datum: @journaal.datum, eenheid: @journaal.eenheid, hoeveelheid: @journaal.hoeveelheid, journaal_type_id: @journaal.journaal_type_id, klant: @journaal.klant, leverancier: @journaal.leverancier, productnaam: @journaal.productnaam, stukprijs: @journaal.stukprijs, valuta: @journaal.valuta }
    end

    assert_redirected_to journaal_path(assigns(:journaal))
  end

  test "should show journaal" do
    get :show, id: @journaal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @journaal
    assert_response :success
  end

  test "should update journaal" do
    patch :update, id: @journaal, journaal: { bedrag_ex_btw: @journaal.bedrag_ex_btw, bedrag_inc_btw: @journaal.bedrag_inc_btw, betalingswijze: @journaal.betalingswijze, boeknummer: @journaal.boeknummer, btw_percentage: @journaal.btw_percentage, datum: @journaal.datum, eenheid: @journaal.eenheid, hoeveelheid: @journaal.hoeveelheid, journaal_type_id: @journaal.journaal_type_id, klant: @journaal.klant, leverancier: @journaal.leverancier, productnaam: @journaal.productnaam, stukprijs: @journaal.stukprijs, valuta: @journaal.valuta }
    assert_redirected_to journaal_path(assigns(:journaal))
  end

  test "should destroy journaal" do
    assert_difference('Journaal.count', -1) do
      delete :destroy, id: @journaal
    end

    assert_redirected_to journaals_path
  end
end
