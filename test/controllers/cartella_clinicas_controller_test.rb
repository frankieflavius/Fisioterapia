require 'test_helper'

class CartellaClinicasControllerTest < ActionController::TestCase
  setup do
    @cartella_clinica = cartella_clinicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartella_clinicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartella_clinica" do
    assert_difference('CartellaClinica.count') do
      post :create, cartella_clinica: { anamnesi: @cartella_clinica.anamnesi, diagnosi: @cartella_clinica.diagnosi, esiti: @cartella_clinica.esiti, generalità: @cartella_clinica.generalità, obiettivo: @cartella_clinica.obiettivo, terapia: @cartella_clinica.terapia }
    end

    assert_redirected_to cartella_clinica_path(assigns(:cartella_clinica))
  end

  test "should show cartella_clinica" do
    get :show, id: @cartella_clinica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartella_clinica
    assert_response :success
  end

  test "should update cartella_clinica" do
    patch :update, id: @cartella_clinica, cartella_clinica: { anamnesi: @cartella_clinica.anamnesi, diagnosi: @cartella_clinica.diagnosi, esiti: @cartella_clinica.esiti, generalità: @cartella_clinica.generalità, obiettivo: @cartella_clinica.obiettivo, terapia: @cartella_clinica.terapia }
    assert_redirected_to cartella_clinica_path(assigns(:cartella_clinica))
  end

  test "should destroy cartella_clinica" do
    assert_difference('CartellaClinica.count', -1) do
      delete :destroy, id: @cartella_clinica
    end

    assert_redirected_to cartella_clinicas_path
  end
end
