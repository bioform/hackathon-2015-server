require 'test_helper'

class InvestorUpdatesControllerTest < ActionController::TestCase
  setup do
    @investor_update = investor_updates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:investor_updates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create investor_update" do
    assert_difference('InvestorUpdate.count') do
      post :create, investor_update: { summary: @investor_update.summary, title: @investor_update.title }
    end

    assert_redirected_to investor_update_path(assigns(:investor_update))
  end

  test "should show investor_update" do
    get :show, id: @investor_update
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @investor_update
    assert_response :success
  end

  test "should update investor_update" do
    patch :update, id: @investor_update, investor_update: { summary: @investor_update.summary, title: @investor_update.title }
    assert_redirected_to investor_update_path(assigns(:investor_update))
  end

  test "should destroy investor_update" do
    assert_difference('InvestorUpdate.count', -1) do
      delete :destroy, id: @investor_update
    end

    assert_redirected_to investor_updates_path
  end
end
