=begin
#Adzerk Decision API

#Adzerk Decision API

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for AdzerkDecisionSdk::Consent
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Consent' do
  before do
    # run before each test
    @instance = AdzerkDecisionSdk::Consent.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Consent' do
    it 'should create an instance of Consent' do
      expect(@instance).to be_instance_of(AdzerkDecisionSdk::Consent)
    end
  end
  describe 'test attribute "gdpr"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
