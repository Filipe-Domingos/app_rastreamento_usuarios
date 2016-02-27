require 'test_helper'

class RastreamentosControllerTest < ActionController::TestCase
  setup do
    @rastreamento = rastreamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rastreamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apresentacao" do
    assert_difference('Rastreamento.count') do
      post :create, apresentacao: {data_hora: @rastreamento.data_hora, titulo: @rastreamento.titulo, url: @rastreamento.url, visitante: @rastreamento.visitante }
    end

    assert_redirected_to rastreamento_path(assigns(:apresentacao))
  end

  test "should show apresentacao" do
    get :show, id: @rastreamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rastreamento
    assert_response :success
  end

  test "should update apresentacao" do
    patch :update, id: @rastreamento, apresentacao: {data_hora: @rastreamento.data_hora, titulo: @rastreamento.titulo, url: @rastreamento.url, visitante: @rastreamento.visitante }
    assert_redirected_to rastreamento_path(assigns(:apresentacao))
  end

  test "should destroy apresentacao" do
    assert_difference('Rastreamento.count', -1) do
      delete :destroy, id: @rastreamento
    end

    assert_redirected_to rastreamentos_path
  end
end
