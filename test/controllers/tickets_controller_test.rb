require 'test_helper'

class TicketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ticket = tickets(:one)
  end

  test "should get index" do
    get tickets_url
    assert_response :success
  end

  test "should get new" do
    get new_ticket_url
    assert_response :success
  end

  test "should create ticket" do
    assert_difference('Ticket.count') do
      post tickets_url, params: { ticket: { city: @ticket.city, company: @ticket.company, contact_number: @ticket.contact_number, country: @ticket.country, email: @ticket.email, first_name: @ticket.first_name, gender: @ticket.gender, industry: @ticket.industry, job_title: @ticket.job_title, last_name: @ticket.last_name, number_of_employees: @ticket.number_of_employees, referral: @ticket.referral, state_province: @ticket.state_province, street_address: @ticket.street_address, track: @ticket.track } }
    end

    assert_redirected_to ticket_url(Ticket.last)
  end

  test "should show ticket" do
    get ticket_url(@ticket)
    assert_response :success
  end

  test "should get edit" do
    get edit_ticket_url(@ticket)
    assert_response :success
  end

  test "should update ticket" do
    patch ticket_url(@ticket), params: { ticket: { city: @ticket.city, company: @ticket.company, contact_number: @ticket.contact_number, country: @ticket.country, email: @ticket.email, first_name: @ticket.first_name, gender: @ticket.gender, industry: @ticket.industry, job_title: @ticket.job_title, last_name: @ticket.last_name, number_of_employees: @ticket.number_of_employees, referral: @ticket.referral, state_province: @ticket.state_province, street_address: @ticket.street_address, track: @ticket.track } }
    assert_redirected_to ticket_url(@ticket)
  end

  test "should destroy ticket" do
    assert_difference('Ticket.count', -1) do
      delete ticket_url(@ticket)
    end

    assert_redirected_to tickets_url
  end
end
