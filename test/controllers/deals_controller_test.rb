require 'test_helper'

class DealsControllerTest < ActionController::TestCase
  setup do
    @deal = deals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deal" do
    assert_difference('Deal.count') do
      post :create, deal: { address: @deal.address, amount: @deal.amount, borrowers_equity: @deal.borrowers_equity, completion_value: @deal.completion_value, current_value: @deal.current_value, funded_date: @deal.funded_date, loan_position: @deal.loan_position, name: @deal.name, purchase_price: @deal.purchase_price, term: @deal.term, user_id: @deal.user_id }
    end

    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should show deal" do
    get :show, id: @deal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deal
    assert_response :success
  end

  test "should update deal" do
    patch :update, id: @deal, deal: { address: @deal.address, amount: @deal.amount, borrowers_equity: @deal.borrowers_equity, completion_value: @deal.completion_value, current_value: @deal.current_value, funded_date: @deal.funded_date, loan_position: @deal.loan_position, name: @deal.name, purchase_price: @deal.purchase_price, term: @deal.term, user_id: @deal.user_id }
    assert_redirected_to deal_path(assigns(:deal))
  end

  test "should destroy deal" do
    assert_difference('Deal.count', -1) do
      delete :destroy, id: @deal
    end

    assert_redirected_to deals_path
  end
end
