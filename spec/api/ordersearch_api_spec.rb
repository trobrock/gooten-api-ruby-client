=begin


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::OrdersearchApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OrdersearchApi' do
  before do
    # run before each test
    @instance = SwaggerClient::OrdersearchApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OrdersearchApi' do
    it 'should create an instact of OrdersearchApi' do
      @instance.should be_a(SwaggerClient::OrdersearchApi)
    end
  end

  # unit tests for g_et_ordersearch
  # Search an orders
  # Search through the orders and return information about orders that match search criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :generic_values Any value which is related to order (partner name, address, phone, couponCode, etc...)
  # @option opts [String] :last_name Partner last name
  # @option opts [String] :email Partner email
  # @option opts [String] :postal_code Billing/Shipping address postal code
  # @option opts [String] :start_date Start date of the date range when order was created
  # @option opts [String] :end_date End date of the date range when order was created
  # @option opts [String] :unique_user_id User Id
  # @option opts [Integer] :partner_id Partner Id
  # @option opts [Integer] :page_size How many items to return in reponse.
  # @option opts [Integer] :page Page number, how many items to skip.
  # @return [SubmittedOrderList]
  describe 'g_et_ordersearch test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end