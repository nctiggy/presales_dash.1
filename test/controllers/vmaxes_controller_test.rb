require 'test_helper'

class VmaxesControllerTest < ActionController::TestCase
  setup do
    @vmax = vmaxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vmaxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vmax" do
    assert_difference('Vmax.count') do
      post :create, vmax: { contract_expiration: @vmax.contract_expiration, contract_number: @vmax.contract_number, engine_count: @vmax.engine_count, enginuity_code: @vmax.enginuity_code, esrs_enabled: @vmax.esrs_enabled, install_date: @vmax.install_date, model_id: @vmax.model_id, openscale: @vmax.openscale, raw_tb: @vmax.raw_tb, serial_number: @vmax.serial_number, ship_date: @vmax.ship_date, site_id: @vmax.site_id, system_name: @vmax.system_name, target_code: @vmax.target_code }
    end

    assert_redirected_to vmax_path(assigns(:vmax))
  end

  test "should show vmax" do
    get :show, id: @vmax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vmax
    assert_response :success
  end

  test "should update vmax" do
    patch :update, id: @vmax, vmax: { contract_expiration: @vmax.contract_expiration, contract_number: @vmax.contract_number, engine_count: @vmax.engine_count, enginuity_code: @vmax.enginuity_code, esrs_enabled: @vmax.esrs_enabled, install_date: @vmax.install_date, model_id: @vmax.model_id, openscale: @vmax.openscale, raw_tb: @vmax.raw_tb, serial_number: @vmax.serial_number, ship_date: @vmax.ship_date, site_id: @vmax.site_id, system_name: @vmax.system_name, target_code: @vmax.target_code }
    assert_redirected_to vmax_path(assigns(:vmax))
  end

  test "should destroy vmax" do
    assert_difference('Vmax.count', -1) do
      delete :destroy, id: @vmax
    end

    assert_redirected_to vmaxes_path
  end
end
