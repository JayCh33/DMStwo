require 'test_helper'

class VehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_vehicle_url
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post vehicles_url, params: { vehicle: { vehicle_airbags: @vehicle.vehicle_airbags, vehicle_category: @vehicle.vehicle_category, vehicle_color: @vehicle.vehicle_color, vehicle_condition: @vehicle.vehicle_condition, vehicle_doors: @vehicle.vehicle_doors, vehicle_drive_type: @vehicle.vehicle_drive_type, vehicle_engine: @vehicle.vehicle_engine, vehicle_euroclass: @vehicle.vehicle_euroclass, vehicle_fuel_type: @vehicle.vehicle_fuel_type, vehicle_interior_type: @vehicle.vehicle_interior_type, vehicle_life_cycle: @vehicle.vehicle_life_cycle, vehicle_make: @vehicle.vehicle_make, vehicle_model: @vehicle.vehicle_model, vehicle_power: @vehicle.vehicle_power, vehicle_price: @vehicle.vehicle_price, vehicle_registration_date: @vehicle.vehicle_registration_date } }
    end

    assert_redirected_to vehicle_url(Vehicle.last)
  end

  test "should show vehicle" do
    get vehicle_url(@vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_vehicle_url(@vehicle)
    assert_response :success
  end

  test "should update vehicle" do
    patch vehicle_url(@vehicle), params: { vehicle: { vehicle_airbags: @vehicle.vehicle_airbags, vehicle_category: @vehicle.vehicle_category, vehicle_color: @vehicle.vehicle_color, vehicle_condition: @vehicle.vehicle_condition, vehicle_doors: @vehicle.vehicle_doors, vehicle_drive_type: @vehicle.vehicle_drive_type, vehicle_engine: @vehicle.vehicle_engine, vehicle_euroclass: @vehicle.vehicle_euroclass, vehicle_fuel_type: @vehicle.vehicle_fuel_type, vehicle_interior_type: @vehicle.vehicle_interior_type, vehicle_life_cycle: @vehicle.vehicle_life_cycle, vehicle_make: @vehicle.vehicle_make, vehicle_model: @vehicle.vehicle_model, vehicle_power: @vehicle.vehicle_power, vehicle_price: @vehicle.vehicle_price, vehicle_registration_date: @vehicle.vehicle_registration_date } }
    assert_redirected_to vehicle_url(@vehicle)
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete vehicle_url(@vehicle)
    end

    assert_redirected_to vehicles_url
  end
end
