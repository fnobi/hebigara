require 'test_helper'

class SnakesControllerTest < ActionController::TestCase
  setup do
    @snake = snakes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snakes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snake" do
    assert_difference('Snake.count') do
      post :create, :snake => { :name => @snake.name }
    end

    assert_redirected_to snake_path(assigns(:snake))
  end

  test "should show snake" do
    get :show, :id => @snake
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @snake
    assert_response :success
  end

  test "should update snake" do
    put :update, :id => @snake, :snake => { :name => @snake.name }
    assert_redirected_to snake_path(assigns(:snake))
  end

  test "should destroy snake" do
    assert_difference('Snake.count', -1) do
      delete :destroy, :id => @snake
    end

    assert_redirected_to snakes_path
  end
end
