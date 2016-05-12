require 'test_helper'

class ShelterTypesControllerTest < ActionController::TestCase
  setup do
    @shelter_type = shelter_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shelter_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shelter_type" do
    assert_difference('ShelterType.count') do
      post :create, shelter_type: { description: @shelter_type.description, name: @shelter_type.name }
    end

    assert_redirected_to shelter_type_path(assigns(:shelter_type))
  end

  test "should show shelter_type" do
    get :show, id: @shelter_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shelter_type
    assert_response :success
  end

  test "should update shelter_type" do
    patch :update, id: @shelter_type, shelter_type: { description: @shelter_type.description, name: @shelter_type.name }
    assert_redirected_to shelter_type_path(assigns(:shelter_type))
  end

  test "should destroy shelter_type" do
    assert_difference('ShelterType.count', -1) do
      delete :destroy, id: @shelter_type
    end

    assert_redirected_to shelter_types_path
  end
end
