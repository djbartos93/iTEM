require 'test_helper'

class InventoriesControllerTest < ActionController::TestCase
  setup do
    @inventory = inventories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventory" do
    assert_difference('Inventory.count') do
      post :create, inventory: { description: @inventory.description, last_order: @inventory.last_order, manufacture: @inventory.manufacture, min_quantity: @inventory.min_quantity, product_part: @inventory.product_part, quantity_hand: @inventory.quantity_hand, quantity_used: @inventory.quantity_used, short_desc: @inventory.short_desc, tc_cat: @inventory.tc_cat, tc_isle: @inventory.tc_isle, tc_part: @inventory.tc_part, tc_shelf: @inventory.tc_shelf, tc_type: @inventory.tc_type, tc_wh: @inventory.tc_wh }
    end

    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should show inventory" do
    get :show, id: @inventory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventory
    assert_response :success
  end

  test "should update inventory" do
    patch :update, id: @inventory, inventory: { description: @inventory.description, last_order: @inventory.last_order, manufacture: @inventory.manufacture, min_quantity: @inventory.min_quantity, product_part: @inventory.product_part, quantity_hand: @inventory.quantity_hand, quantity_used: @inventory.quantity_used, short_desc: @inventory.short_desc, tc_cat: @inventory.tc_cat, tc_isle: @inventory.tc_isle, tc_part: @inventory.tc_part, tc_shelf: @inventory.tc_shelf, tc_type: @inventory.tc_type, tc_wh: @inventory.tc_wh }
    assert_redirected_to inventory_path(assigns(:inventory))
  end

  test "should destroy inventory" do
    assert_difference('Inventory.count', -1) do
      delete :destroy, id: @inventory
    end

    assert_redirected_to inventories_path
  end
end
