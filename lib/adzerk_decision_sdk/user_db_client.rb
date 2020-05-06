require 'adzerk_decision_sdk/api/userdb_api'

module AdzerkDecisionSdk
  class UserDbClient
    def initialize(network_id, api_client)
      @network_id = network_id
      @api = UserdbApi.new(api_client)
    end

    def add_custom_properties(user_key, properties, network_id: nil)
      @api.add_custom_properties(network_id || @network_id, user_key, { body: properties })
    end

    def add_interest(user_key, interest, network_id: nil)
      @api.add_interests(network_id || @network_id, user_key, interest)
    end

    def add_retargeting_segment(user_key, advertiser_id, retargeting_segment_id, network_id: nil)
      @api.add_retargeting_segment(network_id || @network_id, advertiser_id, retargeting_segment_id, user_key)
    end

    def forget(user_key, network_id: nil)
      @api.forget(network_id || @network_id, user_key)
    end

    def gdpr_consent(gdpr_consent, network_id: nil)
      body = gdpr_consent.respond_to?('to_hash') ? gdpr_consent.to_hash() : gdpr_consent
      @api.gdpr_consent(network_id || @network_id, { body: body })
    end

    def ip_override(user_key, ip, network_id: nil)
      @api.ip_override(network_id || @network_id, user_key, ip)
    end

    def match_user(user_key, partner_id, user_id, network_id: nil)
      @api.match_user(network_id || @network_id, user_key, partner_id, user_id)
    end

    def opt_out(user_key, network_id: nil)
      @api.opt_out(network_id || @network_id, user_key)
    end

    def read(user_key, network_id: nil)
      bad_keys = [
        'cookieMonster',
        'dirtyCookies',
        'isNew',
        'adViewTimes',
        'advertiserViewTimes',
        'flightViewTimes',
        'siteViewTimes',
        'campaignViewTimes',
        'pendingConversions',
        'campaignConversions'
      ]

      user_record = @api.read(network_id || @network_id, user_key)

      user_record.delete_if do |key, _|
        bad_keys.include?(key)
      end
    end
  end
end