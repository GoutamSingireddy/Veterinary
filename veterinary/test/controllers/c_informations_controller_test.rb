require 'test_helper'

class CInformationsControllerTest < ActionController::TestCase
  setup do
    @c_information = c_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_information" do
    assert_difference('CInformation.count') do
      post :create, c_information: { Pet_age: @c_information.Pet_age, appointment_id: @c_information.appointment_id, breed: @c_information.breed, name_of_pet: @c_information.name_of_pet, pet_weight: @c_information.pet_weight, type_of_pet: @c_information.type_of_pet }
    end

    assert_redirected_to c_information_path(assigns(:c_information))
  end

  test "should show c_information" do
    get :show, id: @c_information
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_information
    assert_response :success
  end

  test "should update c_information" do
    patch :update, id: @c_information, c_information: { Pet_age: @c_information.Pet_age, appointment_id: @c_information.appointment_id, breed: @c_information.breed, name_of_pet: @c_information.name_of_pet, pet_weight: @c_information.pet_weight, type_of_pet: @c_information.type_of_pet }
    assert_redirected_to c_information_path(assigns(:c_information))
  end

  test "should destroy c_information" do
    assert_difference('CInformation.count', -1) do
      delete :destroy, id: @c_information
    end

    assert_redirected_to c_informations_path
  end
end
