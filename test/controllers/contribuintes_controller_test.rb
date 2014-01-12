require 'test_helper'

class ContribuintesControllerTest < ActionController::TestCase
  setup do
    @contribuinte = contribuintes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contribuintes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contribuinte" do
    assert_difference('Contribuinte.count') do
      post :create, contribuinte: { nome: @contribuinte.nome }
    end

    assert_redirected_to contribuinte_path(assigns(:contribuinte))
  end

  test "should show contribuinte" do
    get :show, id: @contribuinte
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contribuinte
    assert_response :success
  end

  test "should update contribuinte" do
    patch :update, id: @contribuinte, contribuinte: { nome: @contribuinte.nome }
    assert_redirected_to contribuinte_path(assigns(:contribuinte))
  end

  test "should destroy contribuinte" do
    assert_difference('Contribuinte.count', -1) do
      delete :destroy, id: @contribuinte
    end

    assert_redirected_to contribuintes_path
  end
end
