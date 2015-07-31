require 'test_helper'

class Catalogs::ContractsControllerTest < ActionController::TestCase
  setup do
    @catalogs_contract = catalogs_contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_contract" do
    assert_difference('Catalogs::Contract.count') do
      post :create, catalogs_contract: { contract_no: @catalogs_contract.contract_no, device_id: @catalogs_contract.device_id, end_date: @catalogs_contract.end_date, start_date: @catalogs_contract.start_date, supplier_id: @catalogs_contract.supplier_id }
    end

    assert_redirected_to catalogs_contract_path(assigns(:catalogs_contract))
  end

  test "should show catalogs_contract" do
    get :show, id: @catalogs_contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_contract
    assert_response :success
  end

  test "should update catalogs_contract" do
    patch :update, id: @catalogs_contract, catalogs_contract: { contract_no: @catalogs_contract.contract_no, device_id: @catalogs_contract.device_id, end_date: @catalogs_contract.end_date, start_date: @catalogs_contract.start_date, supplier_id: @catalogs_contract.supplier_id }
    assert_redirected_to catalogs_contract_path(assigns(:catalogs_contract))
  end

  test "should destroy catalogs_contract" do
    assert_difference('Catalogs::Contract.count', -1) do
      delete :destroy, id: @catalogs_contract
    end

    assert_redirected_to catalogs_contracts_path
  end
end
