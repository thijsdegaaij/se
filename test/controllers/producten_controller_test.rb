require 'test_helper'

class ProductenControllerTest < ActionController::TestCase
  setup do
    @product = producten(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producten)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { icoon: @product.icoon, naam: @product.naam }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { icoon: @product.icoon, naam: @product.naam }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to producten_path
  end
end
