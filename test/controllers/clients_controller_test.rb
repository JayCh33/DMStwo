require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { address: @client.address, city: @client.city, country: @client.country, details: @client.details, email: @client.email, name: @client.name, phone: @client.phone, postal_code: @client.postal_code, vehicle_brand: @client.vehicle_brand, vehicle_life_cycle: @client.vehicle_life_cycle, vehicle_model: @client.vehicle_model, vehicle_model_details: @client.vehicle_model_details, vehicle_registration_plate: @client.vehicle_registration_plate } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { address: @client.address, city: @client.city, country: @client.country, details: @client.details, email: @client.email, name: @client.name, phone: @client.phone, postal_code: @client.postal_code, vehicle_brand: @client.vehicle_brand, vehicle_life_cycle: @client.vehicle_life_cycle, vehicle_model: @client.vehicle_model, vehicle_model_details: @client.vehicle_model_details, vehicle_registration_plate: @client.vehicle_registration_plate } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
