require 'test_helper'

class OrganisatiesControllerTest < ActionController::TestCase
  setup do
    @organisatie = organisaties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organisaties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organisatie" do
    assert_difference('Organisatie.count') do
      post :create, organisatie: { bedrijfstak_id: @organisatie.bedrijfstak_id, naam: @organisatie.naam, rechtsvorm_id: @organisatie.rechtsvorm_id }
    end

    assert_redirected_to organisatie_path(assigns(:organisatie))
  end

  test "should show organisatie" do
    get :show, id: @organisatie
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organisatie
    assert_response :success
  end

  test "should update organisatie" do
    patch :update, id: @organisatie, organisatie: { bedrijfstak_id: @organisatie.bedrijfstak_id, naam: @organisatie.naam, rechtsvorm_id: @organisatie.rechtsvorm_id }
    assert_redirected_to organisatie_path(assigns(:organisatie))
  end

  test "should destroy organisatie" do
    assert_difference('Organisatie.count', -1) do
      delete :destroy, id: @organisatie
    end

    assert_redirected_to organisaties_path
  end
end
