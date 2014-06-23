require 'test_helper'

class WeaselsControllerTest < ActionController::TestCase
  setup do
    @weasel = weasels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weasels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weasel" do
    assert_difference('Weasel.count') do
      post :create, weasel: { color: @weasel.color, name: @weasel.name }
    end

    assert_redirected_to weasel_path(assigns(:weasel))
  end

  test "should show weasel" do
    get :show, id: @weasel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weasel
    assert_response :success
  end

  test "should update weasel" do
    patch :update, id: @weasel, weasel: { color: @weasel.color, name: @weasel.name }
    assert_redirected_to weasel_path(assigns(:weasel))
  end

  test "should destroy weasel" do
    assert_difference('Weasel.count', -1) do
      delete :destroy, id: @weasel
    end

    assert_redirected_to weasels_path
  end
end
