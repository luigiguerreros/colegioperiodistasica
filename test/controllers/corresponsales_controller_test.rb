require 'test_helper'

class CorresponsalesControllerTest < ActionController::TestCase
  setup do
    @corresponsal = corresponsales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:corresponsales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create corresponsal" do
    assert_difference('Corresponsal.count') do
      post :create, corresponsal: { apellidos: @corresponsal.apellidos, ciudad: @corresponsal.ciudad, correo: @corresponsal.correo, nombres: @corresponsal.nombres, provincia: @corresponsal.provincia, telefono_fijo: @corresponsal.telefono_fijo, telefono_movil: @corresponsal.telefono_movil, usuario: @corresponsal.usuario }
    end

    assert_redirected_to corresponsal_path(assigns(:corresponsal))
  end

  test "should show corresponsal" do
    get :show, id: @corresponsal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @corresponsal
    assert_response :success
  end

  test "should update corresponsal" do
    patch :update, id: @corresponsal, corresponsal: { apellidos: @corresponsal.apellidos, ciudad: @corresponsal.ciudad, correo: @corresponsal.correo, nombres: @corresponsal.nombres, provincia: @corresponsal.provincia, telefono_fijo: @corresponsal.telefono_fijo, telefono_movil: @corresponsal.telefono_movil, usuario: @corresponsal.usuario }
    assert_redirected_to corresponsal_path(assigns(:corresponsal))
  end

  test "should destroy corresponsal" do
    assert_difference('Corresponsal.count', -1) do
      delete :destroy, id: @corresponsal
    end

    assert_redirected_to corresponsales_path
  end
end
