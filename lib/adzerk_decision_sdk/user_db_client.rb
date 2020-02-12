require 'adzerk_decision_sdk/api/userdb_api'

module AdzerkDecisionSdk
  class UserDbClient
    def initialize(api_client)
      @api = UserdbApi.new(api_client)
    end

    def add_custom_properties(network_id, user_key, properties)
      @api.add_custom_properties(user_key, advertiser_id, { body: properties })
    end

    def add_interests(network_id, user_key, interests)
      interests_csv = interests.join(",")
      @api.add_interests(network_id, user_key, interests_csv)
    end

    def add_retargeting_segment(network_id, user_key, advertiser_id, retargeting_segment_id)
      @api.add_retargeting_segment(network_id, advertiser_id, retargeting_segment_id, user_key)
    end

    def forget(network_id, user_key)
      @api.forget(network_id, user_key)
    end

    def gdpr_consent(network_id, gdpr_consent)
      @api.gdpr_consent(network_id, { body: gdpr_consent })
    end

    def ip_override(network_id, user_key, ip)
      @api.ip_override(network_id, user_key, ip)
    end

    def match_user(network_id, user_key, partner_id, user_id)
      @api.match_user(network_id, user_key, partner_id, user_id)
    end

    def opt_out(network_id, user_key)
      @api.opt_out(network_id, user_key)
    end

    def read(network_id, user_key)
      @api.read(network_id, user_key)
    end
  end
end