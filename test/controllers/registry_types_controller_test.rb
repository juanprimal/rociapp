require 'test_helper'

class RegistryTypesControllerTest < ActionController::TestCase
  setup do
    @registry_type = registry_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registry_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registry_type" do
    assert_difference('RegistryType.count') do
      post :create, registry_type: { name: @registry_type.name }
    end

    assert_redirected_to registry_type_path(assigns(:registry_type))
  end

  test "should show registry_type" do
    get :show, id: @registry_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registry_type
    assert_response :success
  end

  test "should update registry_type" do
    patch :update, id: @registry_type, registry_type: { name: @registry_type.name }
    assert_redirected_to registry_type_path(assigns(:registry_type))
  end

  test "should destroy registry_type" do
    assert_difference('RegistryType.count', -1) do
      delete :destroy, id: @registry_type
    end

    assert_redirected_to registry_types_path
  end
end
