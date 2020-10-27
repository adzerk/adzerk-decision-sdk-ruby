=begin
#Adzerk Decision API

#Adzerk Decision API

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module AdzerkDecisionSdk
  class Placement
    # A unique name for the placement defined by you
    attr_accessor :div_name

    # The numeric network id
    attr_accessor :network_id

    # The numeric site id
    attr_accessor :site_id

    # One or more integer ad types. More info [here](https://dev.adzerk.com/docs/ad-sizes)
    attr_accessor :ad_types

    # Zone IDs to use
    attr_accessor :zone_ids

    # A numeric campaign id; if specified, only consider ads in that campaign
    attr_accessor :campaign_id

    # A numeric ad (flight-creative map) id; if specified, only serve that ad if possible
    attr_accessor :flight_id

    # A numeric ad (flight-creative map) id; if specified, only serve that ad if possible
    attr_accessor :ad_id

    # The ad's click-through URL
    attr_accessor :click_url

    # A map of key/value pairs used for [Custom Targeting](https://dev.adzerk.com/docs/custom-targeting)
    attr_accessor :properties

    # An array of numeric event types. Requests tracking URLs for custom events. See here for [Event Tracking IDs](https://dev.adzerk.com/v1.0/docs/custom-event-tracking)
    attr_accessor :event_ids

    # An object that overrides values for an advertiser, campaign, flight or ad. Used especially for header bidding
    attr_accessor :overrides

    # A map of key/value pairs used with [ContentDB](https://dev.adzerk.com/docs/contentdb-1). The format is `\"contentKeys\": {\"schema\": \"contentKey\"}`
    attr_accessor :content_keys

    # (BETA) The number of ads to return per placement. Integer between 1 and 20
    attr_accessor :count

    # (BETA) If true, fills ads in a multi-winner placement in proportion to the flight's goals
    attr_accessor :proportionality

    # (BETA) The name of the eCPM Partition that should be used to source eCPM data for auctions
    attr_accessor :ecpm_partition

    attr_accessor :event_multiplier

    attr_accessor :skip_selection

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'div_name' => :'divName',
        :'network_id' => :'networkId',
        :'site_id' => :'siteId',
        :'ad_types' => :'adTypes',
        :'zone_ids' => :'zoneIds',
        :'campaign_id' => :'campaignId',
        :'flight_id' => :'flightId',
        :'ad_id' => :'adId',
        :'click_url' => :'clickUrl',
        :'properties' => :'properties',
        :'event_ids' => :'eventIds',
        :'overrides' => :'overrides',
        :'content_keys' => :'contentKeys',
        :'count' => :'count',
        :'proportionality' => :'proportionality',
        :'ecpm_partition' => :'ecpmPartition',
        :'event_multiplier' => :'eventMultiplier',
        :'skip_selection' => :'skipSelection'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'div_name' => :'String',
        :'network_id' => :'Integer',
        :'site_id' => :'Integer',
        :'ad_types' => :'Array<Integer>',
        :'zone_ids' => :'Array<Integer>',
        :'campaign_id' => :'Integer',
        :'flight_id' => :'Integer',
        :'ad_id' => :'Integer',
        :'click_url' => :'String',
        :'properties' => :'Object',
        :'event_ids' => :'Array<Integer>',
        :'overrides' => :'Object',
        :'content_keys' => :'Hash<String, Integer>',
        :'count' => :'Integer',
        :'proportionality' => :'Boolean',
        :'ecpm_partition' => :'String',
        :'event_multiplier' => :'Integer',
        :'skip_selection' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'zone_ids',
        :'campaign_id',
        :'flight_id',
        :'ad_id',
        :'click_url',
        :'properties',
        :'event_ids',
        :'overrides',
        :'content_keys',
        :'count',
        :'proportionality',
        :'ecpm_partition',
        :'event_multiplier',
        :'skip_selection'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AdzerkDecisionSdk::Placement` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AdzerkDecisionSdk::Placement`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'div_name')
        self.div_name = attributes[:'div_name']
      end

      if attributes.key?(:'network_id')
        self.network_id = attributes[:'network_id']
      end

      if attributes.key?(:'site_id')
        self.site_id = attributes[:'site_id']
      end

      if attributes.key?(:'ad_types')
        if (value = attributes[:'ad_types']).is_a?(Array)
          self.ad_types = value
        end
      end

      if attributes.key?(:'zone_ids')
        if (value = attributes[:'zone_ids']).is_a?(Array)
          self.zone_ids = value
        end
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'flight_id')
        self.flight_id = attributes[:'flight_id']
      end

      if attributes.key?(:'ad_id')
        self.ad_id = attributes[:'ad_id']
      end

      if attributes.key?(:'click_url')
        self.click_url = attributes[:'click_url']
      end

      if attributes.key?(:'properties')
        self.properties = attributes[:'properties']
      end

      if attributes.key?(:'event_ids')
        if (value = attributes[:'event_ids']).is_a?(Array)
          self.event_ids = value
        end
      end

      if attributes.key?(:'overrides')
        self.overrides = attributes[:'overrides']
      end

      if attributes.key?(:'content_keys')
        if (value = attributes[:'content_keys']).is_a?(Hash)
          self.content_keys = value
        end
      end

      if attributes.key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.key?(:'proportionality')
        self.proportionality = attributes[:'proportionality']
      end

      if attributes.key?(:'ecpm_partition')
        self.ecpm_partition = attributes[:'ecpm_partition']
      end

      if attributes.key?(:'event_multiplier')
        self.event_multiplier = attributes[:'event_multiplier']
      end

      if attributes.key?(:'skip_selection')
        self.skip_selection = attributes[:'skip_selection']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@event_multiplier.nil? && @event_multiplier > 100000000
        invalid_properties.push('invalid value for "event_multiplier", must be smaller than or equal to 100000000.')
      end

      if !@event_multiplier.nil? && @event_multiplier < -100000000
        invalid_properties.push('invalid value for "event_multiplier", must be greater than or equal to -100000000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@event_multiplier.nil? && @event_multiplier > 100000000
      return false if !@event_multiplier.nil? && @event_multiplier < -100000000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] event_multiplier Value to be assigned
    def event_multiplier=(event_multiplier)
      if !event_multiplier.nil? && event_multiplier > 100000000
        fail ArgumentError, 'invalid value for "event_multiplier", must be smaller than or equal to 100000000.'
      end

      if !event_multiplier.nil? && event_multiplier < -100000000
        fail ArgumentError, 'invalid value for "event_multiplier", must be greater than or equal to -100000000.'
      end

      @event_multiplier = event_multiplier
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          div_name == o.div_name &&
          network_id == o.network_id &&
          site_id == o.site_id &&
          ad_types == o.ad_types &&
          zone_ids == o.zone_ids &&
          campaign_id == o.campaign_id &&
          flight_id == o.flight_id &&
          ad_id == o.ad_id &&
          click_url == o.click_url &&
          properties == o.properties &&
          event_ids == o.event_ids &&
          overrides == o.overrides &&
          content_keys == o.content_keys &&
          count == o.count &&
          proportionality == o.proportionality &&
          ecpm_partition == o.ecpm_partition &&
          event_multiplier == o.event_multiplier &&
          skip_selection == o.skip_selection
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [div_name, network_id, site_id, ad_types, zone_ids, campaign_id, flight_id, ad_id, click_url, properties, event_ids, overrides, content_keys, count, proportionality, ecpm_partition, event_multiplier, skip_selection].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        AdzerkDecisionSdk.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
