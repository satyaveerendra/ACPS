require 'test_helper'

class PlaceParkingsControllerTest < ActionController::TestCase
  setup do
    @place_parking = place_parkings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_parkings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_parking" do
    assert_difference('PlaceParking.count') do
      post :create, place_parking: { color: @place_parking.color, registration_number: @place_parking.registration_number, slot_number: @place_parking.slot_number }
    end

    assert_redirected_to place_parking_path(assigns(:place_parking))
  end

  test "should show place_parking" do
    get :show, id: @place_parking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_parking
    assert_response :success
  end

  test "should update place_parking" do
    patch :update, id: @place_parking, place_parking: { color: @place_parking.color, registration_number: @place_parking.registration_number, slot_number: @place_parking.slot_number }
    assert_redirected_to place_parking_path(assigns(:place_parking))
  end

  test "should destroy place_parking" do
    assert_difference('PlaceParking.count', -1) do
      delete :destroy, id: @place_parking
    end

    assert_redirected_to place_parkings_path
  end
end
