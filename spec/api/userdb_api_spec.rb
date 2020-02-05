=begin
#Adzerk Decision API

#Adzerk Decision API

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for AdzerkDecisionSdk::Generated::UserdbApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserdbApi' do
  before do
    # run before each test
    @api_instance = AdzerkDecisionSdk::Generated::UserdbApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserdbApi' do
    it 'should create an instance of UserdbApi' do
      expect(@api_instance).to be_instance_of(AdzerkDecisionSdk::Generated::UserdbApi)
    end
  end

  # unit tests for add_custom_properties
  # Add Custom Properties to a User
  # @param azk The User&#39;s UserDB Key
  # @param network_id Your Network Id
  # @param [Hash] opts the optional parameters
  # @option opts [Object] :body 
  # @return [nil]
  describe 'add_custom_properties test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_interests
  # Add Interests to a User
  # @param network_id Your Network Id
  # @param user_key The User&#39;s UserDB Key
  # @param interest Comma Seperated list of interests
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_interests test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for add_retargeting_segment
  # Add User to a Retargeting Segment
  # @param azk The User&#39;s UserDB Key
  # @param network_id Your Network Id
  # @param advertiser_id The Advertiser&#39;s ID
  # @param retargeting_segment_id The Segment&#39;s ID
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'add_retargeting_segment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for forget
  # Forget User
  # @param network_id Your Network Id
  # @param user_key The User&#39;s UserDB Key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'forget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for gdpr_consent
  # GDPR Consent
  # @param network_id Your Network Id
  # @param [Hash] opts the optional parameters
  # @option opts [GdprConsent] :gdpr_consent 
  # @return [nil]
  describe 'gdpr_consent test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ip_override
  # IP Address Override
  # @param network_id Your Network Id
  # @param azk The User&#39;s UserDB Key
  # @param ip This is the IP to exclude
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'ip_override test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for match_user
  # User Matching
  # @param azk The User&#39;s UserDB Key
  # @param network_id Your Network Id
  # @param partner_id The ID of the RTB provider in Adzerk. Contact Support if you don&#39;t have the ID.
  # @param user_id This is the UserID the individual RTB provider has of the user. This is NOT the UserDB userkey.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'match_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for opt_out
  # Opt-Out a User
  # @param azk The User&#39;s UserDB Key
  # @param network_id Your Network Id
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'opt_out test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for read
  # Read a User&#39;s UserDB Record
  # @param azk The User&#39;s UserDB Key
  # @param network_id Your Network Id
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'read test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for set_user_cookie
  # Set User Cookie
  # @param network_id Your Network Id
  # @param user_key UserDB Id for the user
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'set_user_cookie test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
