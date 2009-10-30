require 'test_helper'

class DescriptionsShortsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descriptions_shorts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create descriptions_short" do
    assert_difference('DescriptionsShort.count') do
      post :create, :descriptions_short => { }
    end

    assert_redirected_to descriptions_short_path(assigns(:descriptions_short))
  end

  test "should show descriptions_short" do
    get :show, :id => descriptions_shorts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => descriptions_shorts(:one).to_param
    assert_response :success
  end

  test "should update descriptions_short" do
    put :update, :id => descriptions_shorts(:one).to_param, :descriptions_short => { }
    assert_redirected_to descriptions_short_path(assigns(:descriptions_short))
  end

  test "should destroy descriptions_short" do
    assert_difference('DescriptionsShort.count', -1) do
      delete :destroy, :id => descriptions_shorts(:one).to_param
    end

    assert_redirected_to descriptions_shorts_path
  end
end
