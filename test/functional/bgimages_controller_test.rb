require 'test_helper'

class BgimagesControllerTest < ActionController::TestCase
  setup do
    @bgimage = bgimages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bgimages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bgimage" do
    assert_difference('Bgimage.count') do
      post :create, :bgimage => { :fixed => @bgimage.fixed, :path => @bgimage.path }
    end

    assert_redirected_to bgimage_path(assigns(:bgimage))
  end

  test "should show bgimage" do
    get :show, :id => @bgimage
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @bgimage
    assert_response :success
  end

  test "should update bgimage" do
    put :update, :id => @bgimage, :bgimage => { :fixed => @bgimage.fixed, :path => @bgimage.path }
    assert_redirected_to bgimage_path(assigns(:bgimage))
  end

  test "should destroy bgimage" do
    assert_difference('Bgimage.count', -1) do
      delete :destroy, :id => @bgimage
    end

    assert_redirected_to bgimages_path
  end
end
