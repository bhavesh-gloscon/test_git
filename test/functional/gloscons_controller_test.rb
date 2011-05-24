require 'test_helper'

class GlosconsControllerTest < ActionController::TestCase
  setup do
    @gloscon = gloscons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gloscons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gloscon" do
    assert_difference('Gloscon.count') do
      post :create, :gloscon => @gloscon.attributes
    end

    assert_redirected_to gloscon_path(assigns(:gloscon))
  end

  test "should show gloscon" do
    get :show, :id => @gloscon.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gloscon.to_param
    assert_response :success
  end

  test "should update gloscon" do
    put :update, :id => @gloscon.to_param, :gloscon => @gloscon.attributes
    assert_redirected_to gloscon_path(assigns(:gloscon))
  end

  test "should destroy gloscon" do
    assert_difference('Gloscon.count', -1) do
      delete :destroy, :id => @gloscon.to_param
    end

    assert_redirected_to gloscons_path
  end
end
