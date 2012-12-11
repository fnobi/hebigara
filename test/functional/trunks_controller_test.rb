require 'test_helper'

class TrunksControllerTest < ActionController::TestCase
  setup do
    @trunk = trunks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trunks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trunk" do
    assert_difference('Trunk.count') do
      post :create, :trunk => { :bgcolor => @trunk.bgcolor, :bgimage_id => @trunk.bgimage_id, :length => @trunk.length, :snake_id => @trunk.snake_id }
    end

    assert_redirected_to trunk_path(assigns(:trunk))
  end

  test "should show trunk" do
    get :show, :id => @trunk
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @trunk
    assert_response :success
  end

  test "should update trunk" do
    put :update, :id => @trunk, :trunk => { :bgcolor => @trunk.bgcolor, :bgimage_id => @trunk.bgimage_id, :length => @trunk.length, :snake_id => @trunk.snake_id }
    assert_redirected_to trunk_path(assigns(:trunk))
  end

  test "should destroy trunk" do
    assert_difference('Trunk.count', -1) do
      delete :destroy, :id => @trunk
    end

    assert_redirected_to trunks_path
  end
end
