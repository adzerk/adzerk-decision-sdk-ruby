module AdzerkDecisionSdk
  class ClientOptions
    attr_accessor :network_id
    attr_accessor :protocol
    attr_accessor :host
    attr_accessor :path
    attr_accessor :api_key
    attr_accessor :user_agent
    attr_accessor :logger
  end

  def initialize()
    @user_agent = 'Adzerk Decision SDK'
  end
end