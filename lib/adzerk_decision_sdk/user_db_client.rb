require 'adzerk_decision_sdk/api/userdb_api'

module AdzerkDecisionSdk
  class UserDbClient
    def initialize(network_id, api_client, logger)
      @network_id = network_id
      @api = UserdbApi.new(api_client)
      @logger = logger
    end

    def set_custom_properties(user_key, properties, network_id: nil)
      @logger.info("Setting custom properties for #{user_key} on #{network_id || @network_id} to: #{properties}")
      @api.add_custom_properties(network_id || @network_id, user_key, { body: properties })
    end

    def add_interest(user_key, interest, network_id: nil)
      @logger.info("Adding interest #{interest} for #{user_key} on #{network_id || @network_id}")
      @api.add_interests(network_id || @network_id, user_key, interest)
    end

    def add_retargeting_segment(user_key, advertiser_id, retargeting_segment_id, network_id: nil)
      @logger.info("Adding #{advertiser_id}.#{retargeting_segment_id} rt segment for #{user_key} on #{network_id || @network_id}")
      @api.add_retargeting_segment(network_id || @network_id, advertiser_id, retargeting_segment_id, user_key)
    end

    def forget(user_key, network_id: nil)
      @logger.info("Forgetting #{user_key} on #{network_id || @network_id}")
      @api.forget(network_id || @network_id, user_key)
    end

    def gdpr_consent(gdpr_consent, network_id: nil)
      body = gdpr_consent.respond_to?('to_hash') ? gdpr_consent.to_hash() : gdpr_consent
      @logger.info("Setting GDPR consent on #{network_id || @network_id} with: #{body}")
      @api.gdpr_consent(network_id || @network_id, { body: body })
    end

    def ip_override(user_key, ip, network_id: nil)
      @logger.info("Overriding IP for #{user_key} on #{network_id || @network_id} to #{ip}")
      @api.ip_override(network_id || @network_id, user_key, ip)
    end

    def match_user(user_key, partner_id, user_id, network_id: nil)
      @logger.info("Matching user #{user_key} on #{network_id || @network_id} to #{partner_id}.#{user_id}")
      @api.match_user(network_id || @network_id, user_key, partner_id, user_id)
    end

    def opt_out(user_key, network_id: nil)
      @logger.info("Opting out for #{user_key} on #{network_id || @network_id}")
      @api.opt_out(network_id || @network_id, user_key)
    end

    def read(user_key, network_id: nil)
      bad_keys = [
        :cookieMonster,
        :dirtyCookies,
        :isNew,
        :adViewTimes,
        :advertiserViewTimes,
        :flightViewTimes,
        :siteViewTimes,
        :campaignViewTimes,
        :pendingConversions,
        :campaignConversions
      ]

      @logger.info("Requesting record for #{user_key} on #{network_id || @network_id}")
      user_record = @api.read(network_id || @network_id, user_key)

      @logger.info("Received unfiltered response of: #{user_record}")
      clean_record = user_record.delete_if do |key, _|
        bad_keys.include?(key)
      end

      @logger.info("Returning filtered response of: #{clean_record}")
      clean_record
    end
  end
end