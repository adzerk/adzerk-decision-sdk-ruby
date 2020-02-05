=begin
#Adzerk Decision API

#Adzerk Decision API

The version of the OpenAPI document: 1.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.3

=end

require 'date'

module AdzerkDecisionSdk
  class Decision
    attr_accessor :ad_id

    attr_accessor :creative_id

    attr_accessor :flight_id

    attr_accessor :campaign_id

    attr_accessor :priority_id

    attr_accessor :click_url

    attr_accessor :contents

    attr_accessor :impression_url

    attr_accessor :events

    attr_accessor :pricing

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ad_id' => :'adId',
        :'creative_id' => :'creativeId',
        :'flight_id' => :'flightId',
        :'campaign_id' => :'campaignId',
        :'priority_id' => :'priorityId',
        :'click_url' => :'clickUrl',
        :'contents' => :'contents',
        :'impression_url' => :'impressionUrl',
        :'events' => :'events',
        :'pricing' => :'pricing'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ad_id' => :'Integer',
        :'creative_id' => :'Integer',
        :'flight_id' => :'Integer',
        :'campaign_id' => :'Integer',
        :'priority_id' => :'Integer',
        :'click_url' => :'String',
        :'contents' => :'Array<Content>',
        :'impression_url' => :'String',
        :'events' => :'Array<Event>',
        :'pricing' => :'PricingData'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AdzerkDecisionSdk::Decision` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AdzerkDecisionSdk::Decision`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ad_id')
        self.ad_id = attributes[:'ad_id']
      end

      if attributes.key?(:'creative_id')
        self.creative_id = attributes[:'creative_id']
      end

      if attributes.key?(:'flight_id')
        self.flight_id = attributes[:'flight_id']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'priority_id')
        self.priority_id = attributes[:'priority_id']
      end

      if attributes.key?(:'click_url')
        self.click_url = attributes[:'click_url']
      end

      if attributes.key?(:'contents')
        if (value = attributes[:'contents']).is_a?(Array)
          self.contents = value
        end
      end

      if attributes.key?(:'impression_url')
        self.impression_url = attributes[:'impression_url']
      end

      if attributes.key?(:'events')
        if (value = attributes[:'events']).is_a?(Array)
          self.events = value
        end
      end

      if attributes.key?(:'pricing')
        self.pricing = attributes[:'pricing']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ad_id == o.ad_id &&
          creative_id == o.creative_id &&
          flight_id == o.flight_id &&
          campaign_id == o.campaign_id &&
          priority_id == o.priority_id &&
          click_url == o.click_url &&
          contents == o.contents &&
          impression_url == o.impression_url &&
          events == o.events &&
          pricing == o.pricing
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ad_id, creative_id, flight_id, campaign_id, priority_id, click_url, contents, impression_url, events, pricing].hash
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
