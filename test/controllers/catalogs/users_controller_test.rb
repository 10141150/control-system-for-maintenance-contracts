require 'test_helper'

class Catalogs::UsersControllerTest < ActionController::TestCase
  setup do
    @catalogs_user = catalogs_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catalogs_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catalogs_user" do
    assert_difference('Catalogs::User.count') do
      post :create, catalogs_user: { email: @catalogs_user.email, name: @catalogs_user.name, user_name: @catalogs_user.user_name }
    end

    assert_redirected_to catalogs_user_path(assigns(:catalogs_user))
  end

  test "should show catalogs_user" do
    get :show, id: @catalogs_user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catalogs_user
    assert_response :success
  end

  test "should update catalogs_user" do
    patch :update, id: @catalogs_user, catalogs_user: { email: @catalogs_user.email, name: @catalogs_user.name, user_name: @catalogs_user.user_name }
    assert_redirected_to catalogs_user_path(assigns(:catalogs_user))
  end

  test "should destroy catalogs_user" do
    assert_difference('Catalogs::User.count', -1) do
      delete :destroy, id: @catalogs_user
    end

    assert_redirected_to catalogs_users_path
  end
end
