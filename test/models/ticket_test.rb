require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save an empty ticket" do
  	ticket = tickets(:one)
  	assert ticket.valid?, "Ticket must be completely filled"
  end

  test "invalid name gives error message" do
  	ticket = tickets(:one)
  	ticket.name = nil
  	ticket.valid?
  	assert_match /can't be blank/, ticket.errors[:name].join,
  		"Presence error not found on ticket"
  end
end

  
