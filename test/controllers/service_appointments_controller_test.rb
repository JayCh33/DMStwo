require 'test_helper'

class ServiceAppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service_appointment = service_appointments(:one)
  end

  test "should get index" do
    get service_appointments_url
    assert_response :success
  end

  test "should get new" do
    get new_service_appointment_url
    assert_response :success
  end

  test "should create service_appointment" do
    assert_difference('ServiceAppointment.count') do
      post service_appointments_url, params: { service_appointment: { appointment_details: @service_appointment.appointment_details, completed: @service_appointment.completed, customer_id: @service_appointment.customer_id, end_time: @service_appointment.end_time, start_time: @service_appointment.start_time } }
    end

    assert_redirected_to service_appointment_url(ServiceAppointment.last)
  end

  test "should show service_appointment" do
    get service_appointment_url(@service_appointment)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_appointment_url(@service_appointment)
    assert_response :success
  end

  test "should update service_appointment" do
    patch service_appointment_url(@service_appointment), params: { service_appointment: { appointment_details: @service_appointment.appointment_details, completed: @service_appointment.completed, customer_id: @service_appointment.customer_id, end_time: @service_appointment.end_time, start_time: @service_appointment.start_time } }
    assert_redirected_to service_appointment_url(@service_appointment)
  end

  test "should destroy service_appointment" do
    assert_difference('ServiceAppointment.count', -1) do
      delete service_appointment_url(@service_appointment)
    end

    assert_redirected_to service_appointments_url
  end
end
