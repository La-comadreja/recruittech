require 'test_helper'

class LoginModulesControllerTest < ActionController::TestCase
  setup do
    @login_module = login_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:login_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create login_module" do
    assert_difference('LoginModule.count') do
      post :create, login_module: {  }
    end

    assert_redirected_to login_module_path(assigns(:login_module))
  end

  test "should show login_module" do
    get :show, id: @login_module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @login_module
    assert_response :success
  end

  test "should update login_module" do
    patch :update, id: @login_module, login_module: {  }
    assert_redirected_to login_module_path(assigns(:login_module))
  end

  test "should destroy login_module" do
    assert_difference('LoginModule.count', -1) do
      delete :destroy, id: @login_module
    end

    assert_redirected_to login_modules_path
  end
end
